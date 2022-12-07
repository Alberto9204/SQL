CREATE OR REPLACE VIEW personal_sin_suledos AS
SELECT id_personal, nombre_personal, puesto_personal 
FROM personal;

CREATE OR REPLACE VIEW provedor_pago_efectivo AS
SELECT id_proveedor, nombre_proveedor, contacto_proveedor, tipo_de_pago_proveedor
FROM proveedor
WHERE tipo_de_pago_proveedor = 'efectivo';

CREATE OR REPLACE VIEW platillos_con_mayor_ganancia AS
SELECT platillo_menu, costo_menu, ganacia_menu
FROM menu
WHERE ganacia_menu >= 100;

CREATE OR REPLACE VIEW cliente_con_mas_visitas AS
SELECT nombre_club_frecuente_cliente, registro_visitas_club_frecuente_cliente
FROM club_frecuente_cliente
HAVING max(registro_visitas_club_frecuente_cliente);

CREATE OR REPLACE VIEW facturas_a_deducir AS
SELECT id_factura, total_factura, rfc_factura
FROM factura
WHERE total_factura >= 1000;