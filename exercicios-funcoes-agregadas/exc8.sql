-- 8. A quantidade de clientes por município.

select idmunicipio, count(idcliente) from cliente group by idmunicipio;