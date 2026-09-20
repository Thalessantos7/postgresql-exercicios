-- 1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento
-- o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.

create view cliente_dados as
select
	cln.nome as cliente,
	prf.nome as profissao,
	ncn.nome as nacionalidade,
	cmp.nome as complemento,
	mnc.nome as municipio,
	uf.nome as unidade_federacao,
	brr.nome as bairro,
	cln.cpf,
	cln.rg,
	cln.data_nascimento,
	case cln.genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	end as genero,
	cln.logradouro,
	cln.numero,
	cln.observacoes
from
	cliente cln
left join
	profissao prf on cln.idprofissao = prf.idprofissao
left join
	nacionalidade ncn on cln.idnacionalidade = ncn.idnacionalidade
left join
	complemento cmp on cln.idcomplemento = cmp.idcomplemento
left join
	municipio mnc on cln.idmunicipio = mnc.idmunicipio
left join
	uf on mnc.iduf = uf.iduf
left join
	bairro brr on cln.idbairro = brr.idbairro

select * from cliente_dados