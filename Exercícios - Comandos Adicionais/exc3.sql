-- 3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.

select nome, coalesce(extract(year from data_nascimento), 0) from cliente;