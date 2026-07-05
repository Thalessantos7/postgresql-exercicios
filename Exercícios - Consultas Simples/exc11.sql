-- 11. Os clientes que informaram o número da residência.

select nome, numero from cliente
where numero is not null;