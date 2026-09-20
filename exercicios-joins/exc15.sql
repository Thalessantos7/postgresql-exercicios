-- 15. A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).

select
	pedido.data_pedido,
	sum(pedido_produto.valor_unitario) as total
from
	pedido_produto
left join
	pedido on pedido_produto.idpedido = pedido.idpedido
group by
	pedido.data_pedido