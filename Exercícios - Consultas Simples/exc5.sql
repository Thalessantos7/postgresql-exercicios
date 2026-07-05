-- 5. Os clientes que moram no bairro "Centro".

select nome, bairro from cliente
where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';