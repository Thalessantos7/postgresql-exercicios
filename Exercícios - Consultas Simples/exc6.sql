-- 6. Os clientes que moram em complementos que iniciam com a letra "A".

select nome, complemento from cliente
where complemento like 'A%';