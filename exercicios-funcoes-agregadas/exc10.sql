-- 10. A quantidade de produtos por fornecedor.

select idfornecedor, count(idproduto) as "quantidade_produtos" from produto group by idfornecedor;