-- 2. O nome do município e o nome e a sigla da unidade da federação.

create view municipio_uf as
select
	mnc.nome as municipio,
	uf.nome as unidade_federacao,
	uf.sigla
from
	municipio mnc
left join
	uf on mnc.iduf = uf.iduf

select * from municipio_uf