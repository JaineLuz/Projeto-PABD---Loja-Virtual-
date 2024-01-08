INSERT INTO LVRA.Cliente (nome_cliente, cidade_cliente, bairro_cliente, rua_cliente, estado_cliente, email_cliente)
	VALUES ('João Silva', 'São Paulo', 'Centro', 'Rua A', 'São Paulo', 'joao@email.com'),
			('Maria Santos', 'Rio de Janeiro', 'Copacabana', 'Avenida B', 'Rio de Janeiro', 'maria@email.com'),
			('Pedro Oliveira', 'Belo Horizonte', 'Savassi', 'Rua C', 'Minas Gerais', 'pedro@email.com'),
			('Ana Souza', 'São Paulo', 'Centro', 'Avenida D', 'São Paulo', 'ana@email.com'),
			('Lucas Pereira', 'São Paulo', 'Pinheiros', 'Rua E', 'São Paulo', 'lucas@email.com'),
			('Mariana Almeida', 'Parelhas', 'Centro', 'Rua J', 'Rio Grande do Norte', 'mariana@email.com'),
			('Rafael Costa', 'Parelhas', 'Cidade Alta', 'Avenida K', 'Rio Grande do Norte', 'rafael@email.com'),
			('Carla Lima', 'Parelhas', 'Bairro Novo', 'Rua L', 'Rio Grande do Norte', 'carla@email.com'),
			('Paulo Santos', 'Parelhas', 'Loteamento São Sebastião', 'Avenida M', 'Rio Grande do Norte', 'paulo@email.com'),
			('Julia Rodrigues', 'Parelhas', 'Vila Verde', 'Rua N', 'Rio Grande do Norte', 'julia@email.com');
		
INSERT INTO LVRA.Telefone_cliente (id_cliente, telefone_cliente)
	VALUES (1, '1122334455'),
			(2, '9988776655'),
			(3, '5544332211'),
			(4, '6677889900'),
			(5, '2233445566'),
			(6, '7788990011'),
			(7, '9900112233'),
			(8, '1122003344'),
			(9, '3355778899'),
			(10, '6699448822'),
			(1, '1199887766'),
			(2, '2277554411'),
			(3, '3355229900'),
			(4, '8811334455'),
			(5, '1155449988');
			
INSERT INTO LVRA.Pedidos (id_cliente, valor_pg_pedido, status_pedido, quant_produto)
	VALUES (1, 150.50, 'Em andamento', 3),
			(2, 200.00, 'Concluído', 5),
			(3, 75.25, 'Pendente', 2),
			(4, 300.00, 'Em andamento', 4),
			(5, 100.75, 'Concluído', 1),
			(6, 50.00, 'Pendente', 3),
			(7, 180.30, 'Em andamento', 2),
			(8, 90.99, 'Concluído', 3),
			(9, 120.25, 'Pendente', 2),
			(10, 250.75, 'Em andamento', 6),
			(8, 80.00, 'Concluído', 1),
			(5, 210.50, 'Pendente', 4),
			(1, 45.60, 'Em andamento', 2),
			(10, 150.00, 'Concluído', 2),
			(2, 95.75, 'Pendente', 3);
		
INSERT INTO LVRA.Produtos (descricao, nome_prod, preco_prod)
	VALUES ('Calça jeans masculina azul', 'Calça Jeans', 69.99),
			('Blusa de malha feminina estampada', 'Blusa Estampada', 29.99),
			('Camisa social masculina branca', 'Camisa Social', 49.99),
			('Vestido floral longo feminino', 'Vestido Longo', 79.99),
			('Tênis esportivo masculino preto', 'Tênis Esportivo', 59.99),
			('Saia midi plissada feminina', 'Saia Plissada', 39.99),
			('Blazer feminino slim fit', 'Blazer Slim Fit', 89.99),
			('Moletom com capuz unissex', 'Moletom com Capuz', 44.99),
			('Calça social feminina preta', 'Calça Social', 54.99),
			('Jaqueta jeans masculina', 'Jaqueta Jeans', 74.99);

INSERT INTO LVRA.Pedido_produto (id_pedido, id_produto)
	VALUES (1, 1),
			(2, 4),
			(3, 6),
			(4, 9),
			(5, 3),
			(6, 2),
			(7, 5),
			(8, 7),
			(9, 8),
			(10, 10),
			(11, 2),
			(12, 1),
			(13, 3),
			(14, 9),
			(15, 4);
	
INSERT INTO LVRA.Fornecedor (nome_fornecedor)
	VALUES ('Beatriz Costa'),
			('Rodrigo Oliveira'),
			('Carla Silva'),
			('Fernanda Santos'),
			('Gabriel Souza');

INSERT INTO LVRA.Telefone_fornecedor (id_fornecedor, telefone_forn)
	VALUES (1, '9.2233-4455'),
			(2, '9.98877-6655'),
			(3, '9.4433-2211'),
			(4, '9.9188-9900'),
			(5, '9.3344-5566'),
			(1, '9.8766-5544'),
			(3, '9.3577-8899'),
			(4, '9.9011-2233');

INSERT INTO LVRA.Abastecimento (id_fornecedor, id_produto, data_entrega)
	VALUES (1, 1, '2023-05-10'),
			(2, 4, '2023-06-15'),
			(3, 6, '2023-07-20'),
			(4, 9, '2023-08-25'),
			(5, 3, '2023-09-30'),
			(1, 2, '2023-10-05'),
			(5, 5, '2023-11-10'),
			(2, 7, '2023-12-15'),
			(3, 8, '2023-01-20'),
			(4, 10, '2023-02-25');
			
INSERT INTO LVRA.Estoque (id_produto, quant_produto)
	VALUES (1, 50),
			(2, 30),
			(3, 20),
			(4, 25),
			(5, 60),
			(6, 10),
			(7, 45),
			(8, 40),
			(9, 15),
			(10, 35);

INSERT INTO LVRA.Categoria (nome_secao)
	VALUES ('Calças'),
			('Blusas'),
			('Camisas'),
			('Vestidos'),
			('Calçados'),
			('Saias'),
			('Blazers'),
			('Moletom'),
			('Acessórios'),
			('Jaquetas');


INSERT INTO LVRA.Produto_categoria (id_produto, id_secao)
	VALUES (1, 1),
			(2, 2),
			(3, 3),
			(4, 4),
			(5, 5),
			(6, 6),
			(7, 7),
			(8, 8),
			(9, 9),
			(10, 10);

INSERT INTO LVRA.Descricao (id_secao, cor_produto, tamanho_prod)
	VALUES (1, 'Azul', 'M'),
			(2, 'Branco', 'P'),
			(3, 'Preto', 'G'),
			(4, 'Floral', 'GG'),
			(5, 'Preto', '42'),
			(6, 'Rosa', 'M'),
			(7, 'Cinza', 'P'),
			(8, 'Vermelho', 'G'),
			(9, 'Dourado', 'Único'),
			(10, 'Jeans', 'GG'),
			(1, 'Rosa', 'G'),
			(2, 'Azul', 'P'),
			(3, 'Cinza', 'M'),
			(4, 'Verde', 'GG'),
			(5, 'Amarelo', '42'),
			(6, 'Branco', 'M'),
			(7, 'Vermelho', 'P'),
			(8, 'Marrom', 'G'),
			(9, 'Prata', 'Único'),
			(10, 'Roxo', 'GG');
