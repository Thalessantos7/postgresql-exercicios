-- 16. A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).

select
	pedido.data_pedido,
	sum(pedido_produto.quantidade) as quantidade
from
	pedido_produto
left join
	pedido on pedido_produto.idpedido = pedido.idpedido
group by
	pedido.data_pedido