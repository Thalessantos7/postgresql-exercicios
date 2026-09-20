-- 19. O somatório do valor do pedido agrupado por vendedor.

select idvendedor, sum(valor) from pedido group by idvendedor;