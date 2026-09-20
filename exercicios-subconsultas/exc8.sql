-- 8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.

select
	cliente.nome as cliente,
	count(pedido.idpedido) as total
from
	pedido
left join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome