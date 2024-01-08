SELECT nome_cliente FROM LVRA.cliente
WHERE cidade_cliente = 'São Paulo';

SELECT nome_cliente FROM LVRA.cliente
WHERE cidade_cliente = 'São Paulo' AND bairro_cliente = 'Centro';

SELECT telefone_cliente FROM LVRA.Telefone_cliente 
WHERE id_cliente =2;

SELECT * FROM LVRA.Pedidos
WHERE status_pedido = 'Pendente';

SELECT * FROM LVRA.produtos
WHERE preco_prod < 50.00;

SELECT * FROM LVRA.abastecimento
WHERE id_fornecedor = 1;

SELECT * FROM LVRA.estoque
WHERE quant_produto > 20;

SELECT * FROM LVRA.descricao
WHERE cor_produto = 'Azul';

/*SUBCONSULTAS*/
SELECT * FROM LVRA.cliente 
WHERE id_cliente IN (
	SELECT id_cliente FROM (
		SELECT id_cliente, 	COUNT(id_cliente) as cont_id
		FROM LVRA.Pedidos
		GROUP BY id_cliente) as cont_Id_Table
WHERE cont_id > 1);


SELECT nome_cliente FROM LVRA.cliente
WHERE id_cliente IN(
	SELECT id_cliente FROM LVRA.Pedidos
	WHERE valor_pg_pedido < 100.00
);


SELECT * FROM LVRA.pedidos
WHERE id_pedido in (
	SELECT id_pedido FROM LVRA.pedido_produto
	WHERE id_produto = 2
);

SELECT * FROM LVRA.cliente
WHERE id_cliente IN (
	SELECT id_cliente FROM LVRA.telefone_cliente
	WHERE telefone_cliente = '2233445566'
);


SELECT nome_fornecedor FROM LVRA.fornecedor
WHERE id_fornecedor in (
	SELECT id_fornecedor FROM LVRA.abastecimento
	WHERE id_fornecedor = 3 AND data_entrega = '2023-07-20'
);

SELECT nome_prod FROM LVRA.Produtos
WHERE id_produto IN (
	SELECT id_produto FROM LVRA.produto_categoria
	WHERE id_secao = 7
);
