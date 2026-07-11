-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.

select count(*) from pedido where data_pedido between '2008-04-15' and '2008-04-25';