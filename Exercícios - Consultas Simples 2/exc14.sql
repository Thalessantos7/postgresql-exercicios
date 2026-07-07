-- 14. Os clientes que não moram em União da Vitória e nem em Porto União.

select * from cliente where idmunicipio != 9 and idmunicipio != 1;