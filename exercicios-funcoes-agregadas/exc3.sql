-- 3. O somatório das vendas de cada vendedor.

select idvendedor, sum(valor) from pedido group by idvendedor;