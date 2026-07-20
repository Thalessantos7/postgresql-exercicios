-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.

select
	pdd.data_pedido,
	pdd.valor,
	cln.nome as cliente,
	trn.nome as transportadora,
	vnd.nome as vendedor
from
	pedido pdd
left join
	cliente cln on pdd.idcliente = cln.idcliente
left join
	transportadora trn on pdd.idtransportadora = trn.idtransportadora
left join
	vendedor vnd on pdd.idvendedor = vnd.idvendedor