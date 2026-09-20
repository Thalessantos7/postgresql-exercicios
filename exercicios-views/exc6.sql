-- 6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.

create view produto_pedido as
select
	prd.nome as produto,
	pdp.quantidade,
	pdp.valor_unitario
from
	pedido_produto pdp
left join
	produto prd on pdp.idproduto = prd.idproduto

select * from produto_pedido