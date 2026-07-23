-- 1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.

select nome, idmunicipio from cliente where idmunicipio = (select idmunicipio from cliente where nome = 'Manoel') and idcliente <> 1;