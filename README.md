# RetailPro — Samu Data Analytics

Proyecto RetailPro: análisis de ventas de una tienda minorista, desarrollado
como parte del curso de Análisis de Datos de Coderhouse (y en paralelo, de
la Tecnicatura en Ciencia de Datos e IA).

## Sobre el proyecto
RetailPro modela el circuito de ventas de un negocio de retail: clientes,
productos, categorías y ventas. El objetivo es practicar el flujo completo
de un analista de datos — modelado, SQL, ETL, DAX y visualización — sobre
un caso de negocio simulado.

## Contenido del repositorio
- sql-checkpoint/ — script SQL que crea la base Ventas_Tech_DB, carga las
  tablas (clientes, productos, categorias, ventas) y corre consultas de
  verificación (INNER JOIN, LEFT JOIN, UNION ALL).
- Cabeza_Samuel_Checkpoint2.pbix — modelo de datos en Power BI con
  relaciones activas y una tabla de medidas DAX (_Medidas).
- Pipeline_ETL_Cabeza_Samuel.pbix.pbix — dashboard con el pipeline de ETL
  del proyecto.

## Herramientas usadas
SQL Server, Power BI Desktop (Power Query + DAX).

## Cómo ejecutar el script SQL
1. Abrir SQL Server Management Studio (o la herramienta de tu preferencia).
2. Conectarse a una instancia de SQL Server.
3. Abrir el archivo .sql dentro de sql-checkpoint/.
4. Ejecutar el script completo: primero elimina las tablas si ya existen
   (se puede volver a correr sin conflictos), después las crea y carga los
   datos, y al final corre un SELECT de verificación por tabla.

## Cómo abrir los archivos de Power BI
Abrir cada .pbix con Power BI Desktop. No requieren conexión externa: los
datos están embebidos en el propio archivo.
