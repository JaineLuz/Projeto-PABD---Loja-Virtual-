UPDATE LVRA.cliente
SET email_cliente = 'joao0203@email.com'
WHERE id_cliente = 1;

UPDATE LVRA.Pedidos
SET status_pedido = 'Concluído'
WHERE id_pedido = 4;

UPDATE LVRA.Pedidos
SET status_pedido = 'Cancelado'
WHERE id_pedido = 9;

UPDATE LVRA.produtos
SET preco_prod = 49.99
WHERE id_produto = 6;

DELETE FROM LVRA.abastecimento
WHERE id_fornecedor = 2 AND id_produto = 7;

DELETE FROM LVRA.descricao
WHERE id_secao = 7 AND cor_produto = 'Vermelho';

DELETE FROM LVRA.Telefone_fornecedor
WHERE telefone_forn = '9.3577-8899';

DELETE FROM LVRA.Telefone_cliente
WHERE telefone_cliente = '3355229900';