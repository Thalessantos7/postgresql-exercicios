-- 3. O nome da transportadora e o município.

select
	trs.nome as transportadora,
	mnc.nome as municipio
from
	transportadora trs
left join
	municipio mnc on trs.idmunicipio = mnc.idmunicipio