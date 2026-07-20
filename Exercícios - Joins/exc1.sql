-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.

select 
	cliente.nome,
	profissao.nome,
	nacionalidade.nome,
	cliente.logradouro,
	cliente.numero,
	complemento.nome,
	bairro.nome,
	municipio.nome,
	uf.nome,
	uf.sigla
from
	cliente
left join
	profissao on cliente.idprofissao = profissao.idprofissao
left join
	nacionalidade on cliente.idnacionalidade = nacionalidade.idnacionalidade
left join
	complemento on cliente.idcomplemento = complemento.idcomplemento
left join
	bairro on cliente.idbairro = bairro.idbairro
left join
	municipio on cliente.idmunicipio = municipio.idmunicipio
left join
	uf on municipio.iduf = uf.iduf