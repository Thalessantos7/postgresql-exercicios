-- 5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.

select * from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor;