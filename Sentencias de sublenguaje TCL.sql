START TRANSACTION;

DELETE FROM la_musleria.menu WHERE la_musleria.menu.id_menu =5;
DELETE FROM la_musleria.menu WHERE la_musleria.menu.id_menu =6;
DELETE FROM la_musleria.menu WHERE la_musleria.menu.id_menu =7;

SELECT * FROM la_musleria.menu;
-- COMMIT;
ROLLBACK;
-------------------------------------------------------------------------------------------------------
START TRANSACTION;

INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (11, "papas fritas", "100", 1, "80");
INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (12, "papas fritas", "100", 1, "80");
INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (13, "papas fritas", "100", 1, "80");
INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (14, "papas fritas", "100", 1, "80");

SAVEPOINT LOTE_1;

INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (15, "papas fritas", "100", 1, "80");
INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (16, "papas fritas", "100", 1, "80");
INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (17, "papas fritas", "100", 1, "80");
INSERT INTO menu (id_menu, platillo_menu, costo_menu, promocion_menu, ganacia_menu) VALUES (18, "papas fritas", "100", 1, "80");

SAVEPOINT LOTE_2;

-- ROLLBACK TO SAVEPOINT LOTE_1;