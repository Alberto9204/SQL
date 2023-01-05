CREATE USER 'user_1@localhost' IDENTIFIED BY 'MUSLE123';
SHOW GRANTS FOR 'user_1@localhost';
GRANT SELECT ON la_musleria.* to 'user_1@localhost';

CREATE USER 'user_2@localhost' IDENTIFIED BY 'MUSLE321';
SHOW GRANTS FOR 'user_2@localhost';
GRANT SELECT, UPDATE, INSERT ON la_musleria.* to 'user_2@localhost';