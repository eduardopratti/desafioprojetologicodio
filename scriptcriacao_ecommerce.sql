### criacao do banco ###

create database ecommerce;

### criacao das tabelas ###

create table vendedores(
	id int auto_increment primary key,
    razao_social varchar(100),
    cnpj int(14) unique
    );
    
create table fornecedores(
	id int auto_increment primary key,
    razao_social varchar(100),
    cnpj int(14) unique
    );
    
create table clientes(
	id int auto_increment primary key,
    nome varchar(100),
    cpf int(11) unique,
    endereco varchar(100),
    email varchar(100)
    );

create table produtos(
	id int auto_increment primary key,
    descricao varchar(100),
    categoria enum('Whey', 'Termogenico','Pre-treino',
    'Hiper-calorico', 'Multi-vitaminico', 'Creatina'),
    valor decimal(5,2) not null,
    fornecedor_produto int,
    constraint fornecedor_produto foreign key (fornecedor_produto) references fornecedores(id)
    );
    
create table pedidos(
    id int auto_increment primary key,
    descricao varchar(100),
    status enum('Pedido recebido', 'Pagamento confirmado',
    'Pronto para envio', 'Pedido com a transportadora', 'Pedido entregue') default 'Pedido recebido',
    valor decimal(6,2) not null,
    cliente_pedido int,
    constraint cliente_pedido foreign key (cliente_pedido) references clientes(id)
    );
    
create table estoque(
	id int auto_increment primary key,
    local_estoque enum('Galpao 1', 'Galpao 2') not null,
    posicao enum('Prateleira 1','Prateleira 2','Prateleira 3',
    'Prateleira 4','Prateleira 5','Prateleira 6')
	);
    
create table entrega(
	id int auto_increment primary key,
    status enum('Entrega a caminho', 'Entrega recebida', 'Entrega cancelada') default 'Entrega a caminho',
    codigo_rastreio varchar(9),
    constraint codigo_unico unique (codigo_rastreio),
    codigo_pedido int,
    constraint codigo_pedido foreign key (codigo_pedido) references pedidos(id)
    );
    
create table pagamento(
	id int auto_increment primary key,
    numero int(16),
    tipo enum('Credito', 'Debito'),
    proprietario varchar(100),
    validade varchar(5),
    cliente_cadastrado int,
    constraint cliente_cadastrado foreign key (cliente_cadastrado) references clientes(id)
	);
    
create table detalhepedidos(
	id int auto_increment primary key,
    id_pedidos int,
	constraint id_pedidos foreign key (id_pedidos) references pedidos(id),
	id_produtos int,
	constraint id_produtos foreign key (id_produtos) references produtos(id)
);

create table detalhevendedores(
	id int auto_increment primary key,
    id_vendedor int,
	constraint id_vendedor foreign key (id_vendedor) references vendedores(id),
	id_produtosV int,
	constraint id_produtosV foreign key (id_produtosV) references produtos(id)
);

create table detalheestoque(
	id int auto_increment primary key,
    id_estoque int,
	constraint id_estoque foreign key (id_estoque) references estoque(id),
	id_produtosE int,
	constraint id_produtosE foreign key (id_produtosE) references produtos(id)
);
    

