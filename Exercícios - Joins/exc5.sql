-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.

select
	produto.nome as produto,
	pedido_produto.quantidade,
	pedido_produto.valor_unitario
from
	pedido_produto
left join
	produto on pedido_produto.idproduto = produto.idproduto