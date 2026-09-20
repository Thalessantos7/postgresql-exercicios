-- 1. Adicione valores default na tabela de produtos do pedido
-- a. Quantidade com o valor 1
-- b. Valor unitário com o valor 0

alter table pedido_produto alter column quantidade set default 1;
alter table pedido_produto alter column valor_unitario set default 0;

insert into pedido_produto(idpedido, idproduto) values (1, 3)
insert into pedido_produto(idpedido, idproduto, quantidade, valor_unitario)
values (1, 4, 5, 100)
select * from pedido_produto