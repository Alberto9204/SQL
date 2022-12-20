-- Aqui lo que hacemos es pedir que columna de la tabla menu y con boolean (0 o 1) ordenarlo acendente o descendente)


CREATE PROCEDURE `sp_orden` (IN field VARCHAR(20), IN orden BOOLEAN)
BEGIN
IF orden = TRUE THEN
	SET @mayor = 'ASC';
ELSE 
     SET @mayor = 'DESC';
 END IF;    
 SET @consulta = CONCAT('SELECT * FROM menu ORDER BY',' ',field,' ',@mayor);
 
 PREPARE mi_cons FROM @consulta;
 EXECUTE mi_cons;
 DEALLOCATE PREPARE mi_cons;
END
