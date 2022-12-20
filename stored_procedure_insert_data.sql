-- aqui ageegmos a los clientes nuevos que vistan el restaurante

CREATE PROCEDURE `insert_new_client`(
IN nombre_nuevo_cliente VARCHAR(50),
IN plato_ordenado_nuevo_cliente VARCHAR(30), 
IN correo_nuevo_cliente VARCHAR(50))
BEGIN
INSERT INTO nuevo_cliente(nombre_nuevo_cliente, plato_ordenado_nuevo_cliente, correo_nuevo_cliente) 
VALUES ( 
nombre_nuevo_cliente,
plato_ordenado_nuevo_cliente,
correo_nuevo_cliente);
END
