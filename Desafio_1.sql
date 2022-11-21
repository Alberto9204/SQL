CREATE DATABASE IF NOT EXISTS la_musleria;

USE la_musleria;

CREATE TABLE IF NOT EXISTS establecimiento (
nombre_establecimiento VARCHAR (20) NOT NULL PRIMARY KEY,
direccion_establecimiento VARCHAR(100) NOT NULL,
contacto_establecimiento VARCHAR(100) NOT NULL,
concepto_establecimiento VARCHAR(150) NOT NULL,
imagen_establecimiento VARCHAR(100) DEFAULT 'imagen-generica.jpg'
);

CREATE TABLE IF NOT EXISTS personal (
id_personal INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_personal VARCHAR (50) NOT NULL,
contacto_personal VARCHAR (100) NOT NULL,
puesto_personal VARCHAR(20) NOT NULL,
sueldo_personal INT NOT NULL,
antiguedad_personal TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS proveedor (
id_proveedor INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre_proveedor VARCHAR (50) NOT NULL,
contacto_proveedor VARCHAR (150) NOT NULL,
tipo_de_pago_proveedor INT NOT NULL,
producto_proveedor VARCHAR (50) NOT NULL
);

CREATE TABLE IF NOT EXISTS factura(
id_factura INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
total_factura INT NOT NULL,
rfc_factura VARCHAR (15) NOT NULL,
fecha_factura TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS venta(
id_venta INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
platillo_venta VARCHAR (15) NOT NULL,
cantidad_venta  INT NOT NULL,
sub_total_venta INT NOT NULL
);

CREATE TABLE IF NOT EXISTS stock(
id_stock INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
cantidad_stock  INT NOT NULL
);

CREATE TABLE IF NOT EXISTS inventario(
id_inventario INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
cantidad_inventario  INT NOT NULL
);

CREATE TABLE IF NOT EXISTS menu(
id_menu INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
platillo_menu VARCHAR(20) NOT NULL,
costo_menu INT NOT NULL,
promocion_menu VARCHAR(50) NOT NULL,
ganacia_menu INT NOT NULL
);

CREATE TABLE IF NOT EXISTS ingredientes(
id_ingredientes INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
platillo_ingredientes VARCHAR(20) NOT NULL,
nombre_ingredientes VARCHAR(25) NOT NULL,
cantidad_ingredientes VARCHAR(20) NOT NULL,
proveedor_ingredientes VARCHAR(25) NOT NULL,
costo_proveedor_ingredientes INT NOT NULL
);

CREATE TABLE IF NOT EXISTS nuevo_cliente(
id_nuevo_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_nuevo_cliente VARCHAR(40) NOT NULL,
plato_ordenado_nuevo_cliente VARCHAR(40) NOT NULL,
correo_nuevo_cliente VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS frecuente_cliente (
id_frecuente_cliente  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_frecuente_cliente  VARCHAR(40) NOT NULL,
plato_ordenado_frecuente_cliente  VARCHAR(40) NOT NULL,
correo_frecuente_cliente  VARCHAR(40) NOT NULL,
registro_visitas_frecuente_cliente  INT NOT NULL 
);

CREATE TABLE IF NOT EXISTS club_frecuente_cliente(
id_club_frecuente_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_club_frecuente_cliente VARCHAR(40) NOT NULL,
plato_ordenado_club_frecuente_cliente VARCHAR(40) NOT NULL,
correo_club_frecuente_cliente VARCHAR(40) NOT NULL,
registro_visitas_club_frecuente_cliente INT NOT NULL,
beneficio_club_frecuente_cliente VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS cliente(
tipo_de_cliente  INT NOT NULL PRIMARY KEY,
nuevo_cliente INT NOT NULL,
frecuente_cliente INT NOT NULL,
club_frecuente_cliente INT NOT NULL,
FOREIGN KEY (nuevo_cliente)
	REFERENCES nuevo_cliente (id_nuevo_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (frecuente_cliente)
	REFERENCES frecuente_cliente  (id_frecuente_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (club_frecuente_cliente)
	REFERENCES club_frecuente_cliente (id_club_frecuente_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);