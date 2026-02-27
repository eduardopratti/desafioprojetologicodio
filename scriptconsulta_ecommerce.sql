### quantos clientes com nome joao tenho cadastrado no banco? ###

select count(*) as 'quantidade de clientes com nome de joao' from 
	clientes 
where 
	nome 
like 
	'%joao%';

### qual o produto mais caro cadastrado em nossa base de dados? ###

select * from 
	produtos 
where
	valor = (select max(valor) from produtos);
    
### quantos pedidos foram feitos por cada cliente? ###

select
	clientes.id,
    clientes.nome,
    count(pedidos.id) as 'quantidade de pedidos feitos por cliente'
from
	clientes
join
	pedidos on cliente_pedido = clientes.id
group by
	clientes.id;
    
### quais os produtos vendidos por cada fornecedor e onde estao alocados no estoque? ###

select distinct
		produtos.descricao,
		fornecedores.razao_social,
        estoque.local_estoque
	from
		produtos
		join
			fornecedores on fornecedor_produto = fornecedores.id
		join 
			detalheestoque on id_produtosE = produtos.id
		join
			estoque on estoque.id = detalheestoque.id_estoque
	order by razao_social;

### quais os clientes que possuem mais de um cartao como forma de pagamento? ###

select
	clientes.nome
from
	clientes
join
	pagamento on pagamento.cliente_cadastrado = clientes.id
group by 
	clientes.id    
having 
	count(cliente_cadastrado) > 1;




	

	
