-- 7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.

select
	nome,
	valor,
	case
		when valor > 500 then 'Acima de 500'
	else
		'Abaixo de 500'
	end as valor
from
	produto