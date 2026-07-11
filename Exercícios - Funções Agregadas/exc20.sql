-- 20. O somatório do valor do pedido agrupado por transportadora.

select idtransportadora, sum(valor) from pedido group by idtransportadora;