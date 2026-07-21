-- 12. O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).

select
	transportadora.nome as transportadora,
	sum(pedido.valor) as soma_total
from
	pedido
inner join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
group by
	transportadora.nome