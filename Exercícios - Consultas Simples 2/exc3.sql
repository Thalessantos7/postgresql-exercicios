-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.

select nome, valor, (((valor * 10) / 100) + valor) as "valor_reajustado" from produto order by nome;