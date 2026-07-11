-- 13. O nome do produto e o preço somente do produto mais caro.

select nome, valor from produto order by valor desc limit 1;