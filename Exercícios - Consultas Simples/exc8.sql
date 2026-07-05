-- 8. Os clientes que não informaram o CPF.

select nome, cpf from cliente
where cpf is null;