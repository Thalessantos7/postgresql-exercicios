-- 7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.

select nome, (select count(idpedido) from pedido where pedido.idcliente = cliente.idcliente) as total from cliente;