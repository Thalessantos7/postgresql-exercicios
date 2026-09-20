-- 3. A data, o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.

select
	pedido.data_pedido,
	pedido.valor,
	cliente.nome as cliente,
	vendedor.nome as vendedor,
	(select sum(quantidade) from pedido_produto where pedido.idpedido = pedido_produto.idpedido)
from
	pedido
left join
	cliente on pedido.idcliente = cliente.idcliente
left join
	vendedor on pedido.idvendedor = vendedor.idvendedor
where
	(select sum(quantidade) from pedido_produto where pedido.idpedido = pedido_produto.idpedido) >= 2