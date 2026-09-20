-- 1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

select nome, coalesce(extract(month from data_nascimento), 0) from cliente;