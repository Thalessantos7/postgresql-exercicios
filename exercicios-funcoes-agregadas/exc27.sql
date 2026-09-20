-- 27. A quantidade de pedidos agrupados por vendedor.

select idvendedor, count(*) from pedido group by idvendedor;