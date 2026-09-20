-- 14. O nome do produto e a quantidade vendida (agrupado por produto).

select
	produto.nome as produto,
	sum(pedido_produto.quantidade) as total
from
	pedido_produto
left join
	produto on pedido_produto.idproduto = produto.idproduto
group by
	produto.nome