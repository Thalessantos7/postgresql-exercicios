-- 2. Adicione valor default na tabela de produtos
-- a. Valor com o valor 0

alter table produto alter column valor set default 0;
insert into produto (nome, idfornecedor) values ('Teste default 1', 1)
insert into produto (nome, idfornecedor, valor) values ('Teste default 1', 1, 50)
select * from produto

-- Produto
select max(idproduto) + 1 from produto
create sequence produto_id_seq minvalue 8
alter table produto alter idproduto set default nextval('produto_id_seq')
alter sequence produto_id_seq owned by produto.idproduto