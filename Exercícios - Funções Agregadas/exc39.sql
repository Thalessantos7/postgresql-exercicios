-- 39. O somatório da quantidade de produtos por pedido.

select idpedido, sum(quantidade) from pedido_produto group by idpedido;