INSERT INTO "compras" ("id_cliente", "id_produto") VALUES ((SELECT id FROM clientes WHERE nome='Chico Buarque de Holanda'), (SELECT id FROM produtos WHERE nome='Violão Lava ME 2'));
