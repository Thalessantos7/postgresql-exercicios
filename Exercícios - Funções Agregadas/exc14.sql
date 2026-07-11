-- 14. O nome do produto e o preço somente do produto mais barato.

select nome, valor from produto order by valor limit 1;