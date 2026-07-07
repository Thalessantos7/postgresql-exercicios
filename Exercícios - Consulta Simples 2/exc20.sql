-- 20. Os municípios que começam com a letra P e são de Santa Catarina.

select * from municipio where nome like 'P%' and iduf = 1;