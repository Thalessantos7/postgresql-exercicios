-- 32. A quantidade de produtos vendida agrupado por produto.

select idproduto, sum(quantidade) from pedido_produto group by idproduto;