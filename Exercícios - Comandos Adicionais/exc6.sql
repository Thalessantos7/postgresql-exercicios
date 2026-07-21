-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.

select
	nome,
	case genero
		when 'M' then 'Masculino'
	else
		'Feminino'
	end as genero
from
	cliente