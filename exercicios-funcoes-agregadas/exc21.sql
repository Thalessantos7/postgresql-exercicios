-- 21. O somatório do valor do pedido agrupado pela data.

select data_pedido, sum(valor) from pedido group by data_pedido;