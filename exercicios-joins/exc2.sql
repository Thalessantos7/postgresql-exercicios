-- 2. O nome do produto, o valor e o nome do fornecedor.

select 
	produto.nome,
	produto.valor,
	fornecedor.nome
from
	produto
left join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor