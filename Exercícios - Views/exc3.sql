-- 3. O nome do produto, o valor e o nome do fornecedor dos produtos.

create view produto_fornecedor as
select
	prd.nome as produto,
	prd.valor,
	frn.nome as fornecedor
from
	produto prd
left join
	fornecedor frn on prd.idfornecedor = frn.idfornecedor

select * from produto_fornecedor