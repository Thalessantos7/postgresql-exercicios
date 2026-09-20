-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.

select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200;