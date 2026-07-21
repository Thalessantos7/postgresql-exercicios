-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.

select
	municipio.nome as municipio,
	count(idcliente) as quantidade
from
	cliente
inner join
	municipio on municipio.idmunicipio = cliente.idmunicipio
group by
	municipio.nome