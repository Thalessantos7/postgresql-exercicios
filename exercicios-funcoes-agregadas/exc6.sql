-- 6. A quantidade de municípios por estado.

select iduf, count(idmunicipio) from municipio group by iduf;