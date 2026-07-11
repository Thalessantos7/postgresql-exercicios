-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.

select idcliente, idvendedor, idtransportadora, sum(valor) from pedido group by idcliente, idvendedor, idtransportadora;