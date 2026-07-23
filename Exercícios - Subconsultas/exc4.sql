-- 4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.

select nome, idmunicipio from cliente where idmunicipio = (select idmunicipio from transportadora where idtransportadora = 1);