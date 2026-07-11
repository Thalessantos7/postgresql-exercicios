-- 34. A quantidade de produtos agrupados por pedido.

select idpedido, sum(quantidade) from pedido_produto group by idpedido;