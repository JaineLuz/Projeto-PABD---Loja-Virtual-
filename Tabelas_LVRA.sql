CREATE TABLE LVRA.Cliente(
	id_cliente Serial primary key,
	nome_cliente Varchar(50) not null,
	cidade_cliente Varchar(50) not null,
	bairro_cliente Varchar(60) not null,
	rua_cliente varchar(60) not null,
	estado_cliente varchar(40) not null,
	email_cliente varchar(60) not null
);

CREATE TABLE LVRA.Telefone_cliente(
	id_cliente int references LVRA.Cliente(id_cliente) not null,
	telefone_cliente varchar(20) not null,
	primary key (id_cliente, telefone_cliente)
	
);

CREATE TABLE LVRA.Pedidos(
	id_pedido Serial primary key,
	id_cliente int references LVRA.Cliente(id_cliente) not null,
	valor_pg_pedido decimal not null,
	status_pedido Varchar(40) not null,
	quant_produto int not null
);

CREATE TABLE LVRA.Produtos(
	id_produto serial primary key,
	descricao varchar(100) not null,
	nome_prod varchar(30) not null,
	preco_prod decimal not null
);

CREATE TABLE LVRA.Pedido_produto(
	id_pedido int references LVRA.Pedidos(id_pedido) not null,
	id_produto int references LVRA.Produtos(id_produto) not null
);

CREATE TABLE LVRA.Fornecedor(
	id_fornecedor serial primary key,
	nome_fornecedor varchar(50) not null
);

CREATE TABLE LVRA.Telefone_fornecedor(
	id_fornecedor int references LVRA.Fornecedor(id_fornecedor) not null,
	telefone_forn Varchar(20) not null
);

CREATE TABLE LVRA.Abastecimento(
	id_fornecedor int references LVRA.Fornecedor(id_fornecedor) not null,
	id_produto int references LVRA.Produtos(id_produto) not null,
	data_entrega date not null
);

CREATE TABLE LVRA.Estoque(
	id_produto_estoque serial primary key,
	id_produto int references LVRA.Produtos(id_produto) not null,
	quant_produto int not null
);

CREATE TABLE LVRA.Categoria(
	id_secao serial primary key,
	nome_secao varchar(40) not null
);


CREATE TABLE LVRA.Produto_categoria(
	id_produto int references LVRA.Produtos(id_produto) not null,
	id_secao int references LVRA.Categoria(id_secao) not null
);

CREATE TABLE LVRA.Descricao(
	id_secao int references LVRA.Categoria(id_secao) not null,
	cor_produto varchar(20) not null,
	tamanho_prod varchar(10) not null
);

