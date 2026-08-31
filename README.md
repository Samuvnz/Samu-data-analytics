# Análisis de datos de Samu

Entregas del curso Análisis de Datos (Coderhouse).

## Contenido del repositorio

## punto de control SQL/: contiene el script SQL del proyecto RetailPro,
  con la creación de las tablas, carga de datos y consultas de verificación
  de la base de datos Ventas_Tech_DB.

## Base de datos: Ventas_Tech_DB

El script crea 4 tablas relacionadas:
- **categorias**: categorías de productos.
- **clientes**: datos de los clientes.
- **productos**: catálogo de productos, vinculado a categorías.
- **ventas**: registro de ventas, vinculado a clientes y productos.

## Cómo ejecutar el script

1. Abrir SQL Server Management Studio (o la herramienta que uses).
2. Conectarse a una instancia de SQL Server.
3. Abrir el archivo -.sql-  dentro de la carpeta 'punto de control SQL'.
4. Ejecutar el script completo (el script elimina las tablas si ya existen,
   así que se puede correr las veces que sea necesario sin errores).
5. Las últimas líneas del script muestran un 'SELECT' de cada tabla para
   verificar que los datos se cargaron correctamente.
