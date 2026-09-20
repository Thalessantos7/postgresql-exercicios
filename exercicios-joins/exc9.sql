-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.

select
	fornecedor.nome as fornecedor,
	count(idproduto) as quantidade
from
	produto
inner join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor
group by
	fornecedor.nome