DELETE FROM compras WHERE (id_cliente=(SELECT id FROM clientes WHERE nome='Martinha Lima Zambujal') AND id_produto=(SELECT id FROM produtos WHERE nome='Fone Topo de Linha'));

ou

SELECT id FROM clientes WHERE nome='Martinha Lima Zambujal';
SELECT id FROM produtos WHERE nome='Fone Topo de Linha';
DELETE FROM compras WHERE (id_cliente = 'id_cliente' AND id_produto = 'id_produto')