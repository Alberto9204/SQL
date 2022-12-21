CREATE DEFINER=`root`@`localhost` TRIGGER `tr_add_new_proveedor` AFTER INSERT ON `proveedor` FOR EACH ROW BEGIN
	insert into `la_musleria`.`new_proveedor`(id_proveedor, nombre_proveedor, contacto_proveedor, producto_proveedor, usuario, registro, db, version)
    values (new.id_proveedor, new.nombre_proveedor, new.contacto_proveedor, new.producto_proveedor, user(), current_timestamp(), database(), version());
END

create table new_proveedor(
	id_proveedor int primary key,
    nombre_proveedor varchar(100),
    contacto_proveedor varchar(100),
    producto_proveedor varchar(100),
    usuario varchar(200),
    registro timestamp,
    db varchar (200),
    version varchar (100)
);

insert into proveedor (id_proveedor, 
nombre_proveedor, contacto_proveedor, tipo_de_pago_proveedor, producto_proveedor)
values (152, 'salsas gonzalez', '8225522445', 'efectivo', 'salsas');