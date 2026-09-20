-- 2. Os vendedores que venderam mais que R$ 1500,00.

select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;