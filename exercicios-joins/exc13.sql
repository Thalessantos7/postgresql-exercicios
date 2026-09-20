-- 13. O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).

select
	cliente.nome as cliente,
	count(idpedido) as quantidade
from
	pedido
left join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome