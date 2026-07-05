-- 14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes.

select 'Nome do cliente: ' || nome ||
' Logradouro: ' || logradouro ||
' Número: ' || numero ||
' Complemento: ' || complemento ||
' Bairro: ' || bairro ||
' Município: ' || municipio ||
' UF: ' || uf as "Dados Concatenados" from cliente