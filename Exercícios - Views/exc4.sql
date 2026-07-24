-- 4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.

create view transportadora_uf as
select
	trn.nome as transportadora,
	trn.logradouro,
	trn.numero,
	uf.nome as unidade_federacao,
	uf.sigla
from
	transportadora trn
left join
	municipio mnc on trn.idmunicipio = mnc.idmunicipio
left join
	uf on mnc.iduf = uf.iduf

select * from transportadora_uf