USE Ventas_Tech_DB;


--Limpieza de tablas existentes

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;



---Creando las tablas con sus ID, tipo de datos,llaves(primarias y secundaria)

CREATE TABLE categorias

(ID_categoria INT PRIMARY KEY,
nombre_categoria VARCHAR(50) NOT NULL,
descripcion      VARCHAR(200)
);

CREATE TABLE clientes

(ID_cliente INT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
ciudad VARCHAR(50),
fecha_registro DATE NOT NULL
);

CREATE TABLE productos

(ID_producto INT PRIMARY KEY,
nombre_producto VARCHAR(100) NOT NULL,
ID_categoria INT FOREIGN KEY REFERENCES categorias,
precio DECIMAL(10,2) NOT NULL,
stock INT DEFAULT 0,
activo TINYINT DEFAULT 1
);

CREATE TABLE ventas

(ID_venta INT PRIMARY KEY,
ID_cliente INT FOREIGN KEY REFERENCES clientes,
ID_producto INT FOREIGN KEY REFERENCES productos,
cantidad INT NOT NULL,
precio_unitario DECIMAL(10,2) NOT NULL,
fecha_venta DATE NOT NULL
);



---Aca insertamos los datos a registrar en nuestra base de datos(le metemos la informacion)

INSERT INTO categorias VALUES (1,'Computacion','Laptops, PCs y monitores');
INSERT INTO categorias VALUES (2,'Accesorios','Perifericos y complementos');
INSERT INTO categorias Values (3,'Audio','Auriculares y parlantes');
INSERT INTO categorias Values (4,'Almacenamiento','Discos y memorias');

INSERT INTO clientes VALUES  (1,'Maria', 'lopez', 'maria@mail.com', 'Buenos Aires', '2024-01-05');
INSERT INTO clientes VALUES  (2,'Carlos','Ruiz', 'carlos@mail.com','Cordoba','2024-01-10');
INSERT INTO clientes VALUES  (3,'Ana', 'Gomez', 'ana@mail.com', 'Rosario', '2024-02-01');
INSERT INTO clientes VALUES  (4,'Pedro','Sanz','pedro@mail.com', 'Mendoza', '2024-02-15');
INSERT INTO clientes VALUES  (5,'Laura','Torres', 'laura@mail.com', 'Tucuman', '2024-03-01');

INSERT INTO productos VALUES (1, 'Laptop Pro 15',      1, 1200.00, 15, 1);
INSERT INTO productos VALUES (2, 'Mouse Inalambrico',  2, 28.00, 80, 1);
INSERT INTO productos VALUES (3, 'Monitor 4k 27" ',    1, 450.00, 12, 1);
INSERT INTO productos VALUES (4, 'Auriculares BT Pro', 3, 120.00, 35, 1);
INSERT INTO productos VALUES (5, 'SSD Externo 1TB',    4, 130.00, 18, 1);
INSERT INTO productos VALUES (6, 'Teclado Mecanico',   2, 95.00,  40, 1);

INSERT INTO ventas VALUES    (1,  1, 1, 2, 1200.00, '2024-03-05');
INSERT INTO ventas VALUES    (2,  2, 2, 5,  28.00,  '2024-03-06');
INSERT INTO ventas VALUES    (3,  3, 3, 1,  450.00, '2024-03-07');
INSERT INTO ventas VALUES    (4,  1, 4, 2,  120.00, '2024-03-08');
INSERT INTO ventas VALUES    (5,  4, 5, 3,  130.00, '2024-03-10');
INSERT INTO ventas VALUES    (6,  2, 6, 4,   95.00, '2024-03-11');
INSERT INTO ventas VALUES    (7,  5, 1, 1,  1200.00,'2024-03-12');
INSERT INTO ventas VALUES    (8,  3, 2, 8,   28.00, '2024-03-13');
INSERT INTO ventas VALUES    (9,  4, 4, 1,  120.00, '2024-03-14');
INSERT INTO ventas VALUES    (10, 5, 3, 2,  450.00, '2024-03-15');


---Aca podemos consultar tabla por tabla que datos tiene dentro

SELECT * FROM categorias;

SELECT * FROM clientes;

SELECT * FROM productos;

SELECT * FROM ventas;