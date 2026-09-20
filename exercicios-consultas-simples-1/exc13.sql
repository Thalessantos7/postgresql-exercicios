-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002.

select nome, data_nascimento from cliente
where data_nascimento between '2000-01-01' and '2002-01-01';