-- 5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.

select nome, idmunicipio from cliente where idmunicipio in (select idmunicipio from transportadora);