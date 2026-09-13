USE Ventas_Tech_DB

-- CONSULTA 1: Vista base del proyecto (INNER JOIN)
-- Cruza ventas con clientes, productos y categorías para obtener en una sola fila
-- toda la información necesaria para el análisis: quién compró, qué compró,
-- de qué categoría es el producto, y el total de cada venta.

Select ventas.fecha_venta AS Fecha_compra,
       clientes.nombre AS nombre_cliente,
       productos.nombre_producto,
       categorias.nombre_categoria,
       ventas.precio_unitario,
       ventas.cantidad,
       ventas.cantidad * ventas.precio_unitario AS Total_venta
       FROM ventas
       INNER JOIN clientes ON ventas.ID_cliente = clientes.ID_cliente
       INNER JOIN productos ON ventas.ID_producto = productos.ID_producto
       INNER JOIN categorias ON productos.ID_categoria = categorias.ID_categoria


-- CONSULTA 2: Clientes sin ventas (LEFT JOIN)
-- Resultado esperado: 0 filas, ya que los 5 clientes cargados tienen al menos una venta registrada.

Select clientes.nombre,clientes.apellido,clientes.email,clientes.ciudad,clientes.fecha_registro
FROM   clientes
LEFT JOIN ventas ON ventas.ID_cliente = clientes.ID_cliente
WHERE ventas.ID_cliente IS NULL;
       
-- CONSULTA 3: Productos sin ventas (LEFT JOIN)
-- Resultado esperado: 0 filas, ya que los 6 productos cargados tienen al menos una venta registrada.

Select productos.nombre_producto,productos.precio,categorias.nombre_categoria
FROM productos
INNER JOIN categorias ON productos.ID_categoria = categorias.ID_categoria 
LEFT JOIN ventas ON ventas.ID_producto = productos.ID_producto
WHERE ventas.ID_producto IS NULL;

-- CONSULTA 4: Consolidado por canal (UNION ALL)
-- La columna "canal" no existe en los datos originales: se crea como valor literal
-- para simular dos orígenes de venta, usando el monto de la venta como criterio
-- (mayor a $500 = Web, menor o igual a $500 = Pick up).
-- Se usa UNION ALL en vez de UNION para no perder ninguna venta,
-- y se agrupa por canal para obtener el total facturado de cada uno.

SELECT canal, SUM(total) AS Total_por_canal
    FROM (
    SELECT fecha_venta, cantidad * precio_unitario AS total, 'Web' AS canal
    FROM ventas
    WHERE cantidad * precio_unitario > 500
    UNION ALL
    SELECT fecha_venta, cantidad * precio_unitario AS total, 'Pick up' AS canal
    FROM ventas
    WHERE cantidad * precio_unitario <= 500
    ) AS ventas_por_canal
    GROUP BY canal;
