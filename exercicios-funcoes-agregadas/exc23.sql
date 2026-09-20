-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.

select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;