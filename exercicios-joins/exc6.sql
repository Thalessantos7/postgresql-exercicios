-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).

select
	cliente.nome,
	pedido.data_pedido
from
	cliente
inner join
	pedido on pedido.idcliente = cliente.idcliente
order by
	cliente.nome