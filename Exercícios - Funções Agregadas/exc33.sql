-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.

select idpedido, sum(valor_unitario) from pedido_produto group by idpedido;