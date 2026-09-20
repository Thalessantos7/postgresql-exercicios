-- 2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.

select data_pedido, valor from pedido where valor < (select avg(valor) from pedido);