-- 10. O nome do cliente e o somatório do valor do pedido (agrupado por cliente).

select
	cliente.nome as cliente,
	sum(pedido.valor) as soma_valor
from
	pedido
left join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome