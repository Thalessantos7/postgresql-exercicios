-- 11. O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).

select
	vendedor.nome as vendedor,
	sum(pedido.valor) as soma_valor
from
	pedido
left join
	vendedor on pedido.idvendedor = vendedor.idvendedor
group by
	vendedor.nome