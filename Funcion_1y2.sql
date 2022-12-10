CREATE DEFINER=`root`@`localhost` FUNCTION `iva_menu`(total DECIMAL(11,2)) RETURNS decimal(11,2)
    DETERMINISTIC
BEGIN
DECLARE IVA DECIMAL(11,2);
SET  IVA = (select costo_menu from menu where costo_menu);
	RETURN MENU_COSTO*1.16;
RETURN 1;
END
--------------------------------------------------------
CREATE DEFINER=`root`@`localhost` FUNCTION `platillo_menu`(menu_id int) RETURNS varchar(30) CHARSET utf8mb4
    READS SQL DATA
BEGIN
DECLARE nombre VARCHAR(30);
SET nombre = (SELECT platillo_menu FROM menu WHERE id_menu = menu_id);
RETURN nombre;
END