-- 28. A quantidade de pedidos agrupados por cliente.

select idcliente, count(*) from pedido group by idcliente;