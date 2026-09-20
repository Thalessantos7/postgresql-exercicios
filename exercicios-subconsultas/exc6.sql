-- 6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do
-- valor total dos produtos daquele pedido seja maior que a média do
-- valor total de todos os produtos de todos os pedidos.

update
	pedido
set
	valor = valor + ((valor * 5) / 100)
where
	(select sum(pedido_produto.valor_unitario) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) > (select avg(valor_unitario) from pedido_produto) 

select
	pedido.idpedido,
	(select sum(valor_unitario) from pedido_produto where pedido_produto.idpedido = pedido.idpedido)
from
	pedido

select avg(valor_unitario) from pedido_produto

select * from pedido_produto
select * from pedido