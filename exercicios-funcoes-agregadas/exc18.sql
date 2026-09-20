-- 18. O somatório do valor do pedido agrupado por cliente.

select idcliente, sum(valor) from pedido group by idcliente;