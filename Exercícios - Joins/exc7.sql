-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).

select
	cliente.nome,
	pedido.data_pedido
from
	cliente
left join
	pedido on pedido.idcliente = cliente.idcliente
order by
	cliente.nome