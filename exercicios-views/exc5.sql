-- 5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.

create view dados_pedido as
select
	pdd.data_pedido,
	pdd.valor,
	trn.nome as transportadora,
	cln.nome as cliente,
	vnd.nome as vendedor
from
	pedido pdd
left join
	transportadora trn on pdd.idtransportadora = trn.idtransportadora
left join
	cliente cln on pdd.idcliente = cln.idcliente
left join
	vendedor vnd on pdd.idvendedor = vnd.idvendedor

select * from dados_pedido