### insercao de dados ###

insert into 
	clientes (nome, cpf, endereco, email) 
values ('joao da silva', 1122233344, 'rua dos testes', 'joao@silva.com'),
('joao da moura', 1122233355, 'rua dos bugs', 'joao@moura.com'),
('joao da costa', 1122233366, 'rua dos crashs', 'joao@costa.com');

insert into 
	fornecedores (razao_social, cnpj) 
values ('fornecedor vermelho', '00000000000001'),
('fornecedor azul', '00000000000002'),
('fornecedor amarelo', '00000000000003'),
('fornecedor verde', '00000000000004'),
('fornecedor roxo', '00000000000005');

insert into
	produtos (descricao, categoria, valor, fornecedor_produto)
values ('whey chocolate', 'whey', 89.90, 1),
('whey morango', 'whey', 89.90, 1),
('whey cookies', 'whey', 89.90, 1),
('creatina monohidratada', 'creatina', 59.90, 2),
('pre treino frutas vermelhas', 'pre-treino', 79.90, 3),
('pre treino frutas amarelas', 'pre-treino', 79.90, 3),
('whey chocolate', 'whey', 99.90, 4),
('whey chocolate belga', 'whey', 109.90, 4),
('super vitaminas', 'multi-vitaminico', 29.90, 5);

insert into 
	vendedores (razao_social, cnpj)
values ('senhor pump', 00000000000055),
('mr fit', 00000000000077);

insert into
	pedidos (descricao, status, valor, cliente_pedido)
values('pedido numero 1', 'pedido recebido', 89.90, 1),
('pedido numero 2', 'pedido recebido', 59.90, 2),
('pedido numero 3', 'pedido recebido', 129.80, 3);

insert into
	pagamento (numero, tipo, proprietario, validade, cliente_cadastrado)
values (544555666, 'credito', 'maria torres', '01/33', 1),
(15212541, 'debito', 'carlos henrique', '01/29', 1),
(136152314, 'credito', 'joao da moura', '01/28', 2),
(4121651, 'credito', 'joao da costa', '11/26', 3);

insert into
	estoque (local_estoque, posicao)
values ('galpao 1', null),
('galpao 2', null),
('galpao 1', 'prateleira 1'),
('galpao 1', 'prateleira 2'),
('galpao 1', 'prateleira 3'),
('galpao 1', 'prateleira 4'),
('galpao 1', 'prateleira 5'),
('galpao 1', 'prateleira 6'),
('galpao 2', 'prateleira 1'),
('galpao 2', 'prateleira 2');

insert into
	entrega (status, codigo_rastreio, codigo_pedido)
values ('entrega recebida', 'er312n354', 1),
('entrega recebida', 'uy712n364', 2),
('entrega recebida', 'znm12y998', 3);

insert into 
	detalhevendedores (id_vendedor, id_produtosV)
values (2, 1),
(2, 2),
(2, 3),
(2, 7),
(2, 8),
(1, 1),
(1, 5),
(1, 9),
(1, 4),
(1, 6);

insert into
	detalhepedidos (id_pedidos, id_produtos)
values (1, 2),
(2, 4),
(3, 7),
(3, 9);

insert into
	detalheestoque (id_estoque, id_produtosE)
values (1, 1),
(1, 1),
(2, 2),
(2, 3),
(6, 1),
(7, 5),
(8, 4),
(8, 4),
(10, 1),
(10, 3),
(9, 7),
(2, 5),
(1, 8),
(1, 3),
(6, 6);







