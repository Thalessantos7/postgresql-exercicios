-- Respostas da avaliação prática de banco de dados.

-- 1. Questão
create database biblioteca;

-- 2. Questão
create table editora (
	ideditora serial not null,
	nome varchar(50) not null,

	constraint pk_edt_ideditora primary key (ideditora),
	constraint un_edt_nome unique (nome)
);

-- 3. Questão
insert into editora (nome) values ('Bookman');
insert into editora (nome) values ('Edgard Blusher');
insert into editora (nome) values ('Nova Terra');
insert into editora (nome) values ('Brasport');

-- 4. Questão
create table categoria (
	idcategoria serial not null,
	nome varchar(50) not null,

	constraint pk_ctg_idcategoria primary key (idcategoria),
	constraint un_ctg_nome unique (nome)
);

-- 5. Questão
insert into categoria (nome) values ('Banco de Dados');
insert into categoria (nome) values ('HTML');
insert into categoria (nome) values ('Java');
insert into categoria (nome) values ('PHP');

-- 6. Questão
create table autor (
	idautor serial not null,
	nome varchar(50) not null,

	constraint pk_atr_idautor primary key (idautor)
);

-- 7. Questão
insert into autor (nome) values ('Waldemar Setzer');
insert into autor (nome) values ('Flávio Soares');
insert into autor (nome) values ('John Watson');
insert into autor (nome) values ('Rui Rossi dos Santos');
insert into autor (nome) values ('Antonio Pereira de Resende');
insert into autor (nome) values ('Claudiney Calixto Lima');
insert into autor (nome) values ('Evandro Carlos Teruel');
insert into autor (nome) values ('Ian Graham');
insert into autor (nome) values ('Fabrício Xavier');
insert into autor (nome) values ('Pablo Dalloglio');

-- 8. Questão
create table livro (
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(50) not null,

	constraint pk_lvr_idlivro primary key (idlivro),
	constraint fk_lvr_ideditora foreign key (ideditora) references editora (ideditora),
	constraint fk_lvr_idcategoria foreign key (idcategoria) references categoria (idcategoria),
	constraint un_lvr_nome unique (nome)
);

-- 9. Questão
insert into livro(ideditora, idcategoria, nome) values (2, 1, 'Banco de Dados – 1 Edição');
insert into livro(ideditora, idcategoria, nome) values (1, 1, 'Oracle DataBase 11G Administração');
insert into livro(ideditora, idcategoria, nome) values (3, 3, 'Programação de Computadores em Java');
insert into livro(ideditora, idcategoria, nome) values (4, 3, 'Programação Orientada a Aspectos em Java');
insert into livro(ideditora, idcategoria, nome) values (4, 2, 'HTML5 – Guia Prático');
insert into livro(ideditora, idcategoria, nome) values (3, 2, 'XHTML: Guia de Referência para Desenvolvimento na Web');
insert into livro(ideditora, idcategoria, nome) values (1, 4, 'PHP para Desenvolvimento Profissional');
insert into livro(ideditora, idcategoria, nome) values (2, 4, 'PHP com Programação Orientada a Objetos');

-- 10. Questão
create table livro_autor (
	idlivro integer not null,
	idautor integer not null,

	constraint pk_ltr_idlivroautor primary key (idlivro, idautor),
	constraint fk_ltr_idlivro foreign key (idlivro) references livro (idlivro),
	constraint fk_ltr_idautor foreign key (idautor) references autor (idautor)
);

-- 11. Questão
insert into livro_autor (idlivro, idautor) values (6, 1);
insert into livro_autor (idlivro, idautor) values (6, 2);
insert into livro_autor (idlivro, idautor) values (7, 3);
insert into livro_autor (idlivro, idautor) values (8, 4);
insert into livro_autor (idlivro, idautor) values (9, 5);
insert into livro_autor (idlivro, idautor) values (9, 6);
insert into livro_autor (idlivro, idautor) values (10, 7);
insert into livro_autor (idlivro, idautor) values (11, 8);
insert into livro_autor (idlivro, idautor) values (12, 9);
insert into livro_autor (idlivro, idautor) values (13, 10);

-- 12. Questão
create table aluno (
	idaluno serial not null,
	nome varchar(50),

	constraint pk_aln_idaluno primary key (idaluno),
	constraint un_aln_nome unique (nome)
);

-- 13. Questão
insert into aluno (nome) values ('Mario');
insert into aluno (nome) values ('João');
insert into aluno (nome) values ('Paulo');
insert into aluno (nome) values ('Pedro');
insert into aluno (nome) values ('Maria');

-- 14. Questão
create table emprestimo (
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor float default 0,
	devolvido char(1) not null,

	constraint pk_emp_idemprestimo primary key (idemprestimo),
	constraint fk_emp_idaluno foreign key (idaluno) references aluno (idaluno)
);

-- 15. Questão
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (1, '2012-05-02', '2012-05-12', 10, 'S');

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (1, '2012-04-23', '2012-05-03', 5, 'N');

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (2, '2012-05-10', '2012-05-20', 12, 'N');

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (3, '2012-05-10', '2012-05-20', 8, 'S');

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-05', '2012-05-15', 15, 'N');

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-07', '2012-05-17', 20, 'S');

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-08', '2012-05-18', 5, 'S');

-- 16. Questão
create table emprestimo_livro (
	idemprestimo integer not null,
	idlivro integer not null,

	constraint pk_elv_idemprestimolivro primary key (idemprestimo, idlivro),
	constraint fk_elv_idemprestimo foreign key (idemprestimo) references emprestimo (idemprestimo),
	constraint fk_elv_idlivro foreign key (idlivro) references livro (idlivro)
);

-- 17. Questão
insert into emprestimo_livro (idemprestimo, idlivro) values (1, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 9);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 8);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 7);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 12);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 10);
insert into emprestimo_livro (idemprestimo, idlivro) values (5, 9);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 11);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (7, 13);

-- 18. Questão
create index idx_emp_data_emprestimo on emprestimo (data_emprestimo);
create index idx_emp_data_devolucao on emprestimo (data_devolucao);

-- 19. Questão
select nome from autor order by nome;

-- 20. Questão
select nome from aluno where nome like 'P%';

-- 21. Questão
select nome from livro where idcategoria = 1 or idcategoria = 3;

-- 22. Questão
select nome from livro where ideditora = 1;

-- 23. Questão
select * from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';

-- 24. Questão
select * from emprestimo where data_emprestimo not between '2012-05-05' and '2012-05-10';

-- 25. Questão
select * from emprestimo where devolvido = 'S';

-- 26. Questão
select count(*) as quantidade_livros from livro;

-- 27. Questão
select sum(valor) as soma_valor from emprestimo;

-- 28. Questão
select avg(valor) as media_valor from emprestimo;

-- 29. Questão
select max(valor) as maior_valor from emprestimo;

-- 30. Questão
select min(valor) as menor_valor from emprestimo;

-- 31. Questão
select sum(valor) as soma_valor from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';

-- 32. Questão
select count(idemprestimo) as quantidade_emprestimos from emprestimo where data_emprestimo between '2012-05-01' and '2012-05-05';

-- 33. Questão
create view dados_livros as
select
	lvr.nome as livro,
	ctg.nome as categoria,
	edt.nome as editora
from
	livro lvr
left join
	categoria ctg on lvr.idcategoria = ctg.idcategoria
left join
	editora edt on lvr.ideditora = edt.ideditora

-- 34. Questão
create view livro_autor_view as
select
	lvr.nome as livro,
	atr.nome as autor
from
	livro_autor ltr
left join
	livro lvr on ltr.idlivro = lvr.idlivro
left join
	autor atr on ltr.idautor = atr.idautor

-- 35. Questão
select
	lvr.nome as livro
from
	livro_autor ltr
left join
	livro lvr on ltr.idlivro = lvr.idlivro
where
	ltr.idautor = 8

-- 36. Questão
select
	aln.nome as aluno,
	emp.data_emprestimo,
	emp.data_devolucao
from
	emprestimo emp
left join
	aluno aln on emp.idaluno = aln.idaluno

-- 37. Questão
select
	distinct(lvr.nome) as livro
from
	emprestimo_livro elv
left join
	livro lvr on elv.idlivro = lvr.idlivro

-- 38. Questão
select
	edt.nome as editora,
	count(lvr.idlivro) as quantidade_livros
from
	livro lvr
left join
	editora edt on lvr.ideditora = edt.ideditora
group by
	edt.nome

-- 39. Questão
select
	ctg.nome as categoria,
	count(lvr.idlivro) as quantidade_livros
from
	livro lvr
left join
	categoria ctg on lvr.idcategoria = ctg.idcategoria
group by
	ctg.nome

-- 40. Questão
select
	atr.nome as autor,
	count(ltr.idlivro) as quantidade_livros
from
	livro_autor ltr
left join
	autor atr on ltr.idautor = atr.idautor
group by
	atr.nome

-- 41. Questão
select
	aln.nome as aluno,
	count(emp.idemprestimo) as quantidade_emprestimo
from
	emprestimo emp
left join
	aluno aln on emp.idaluno = aln.idaluno
group by
	aln.nome

-- 42. Questão
select
	aln.nome as aluno,
	sum(emp.valor) as soma_valor
from
	emprestimo emp
left join
	aluno aln on emp.idaluno = aln.idaluno
group by
	aln.nome

-- 43. Questão
select
	aln.nome as aluno,
	sum(emp.valor) as soma_valor
from
	emprestimo emp
left join
	aluno aln on emp.idaluno = aln.idaluno
group by
	aln.nome
having
	sum(emp.valor) > 7

-- 44. Questão
select upper(nome) from aluno order by nome desc;

-- 45. Questão
select * from emprestimo where extract(month from data_emprestimo) = '04' and extract(year from data_emprestimo) = '2012';

-- 46. Questão
select
	*,
	case devolvido
		when 'S' then 'Devolução completa'
		when 'N' then 'Em atraso'
	end as status
from
	emprestimo

-- 47. Questão
select substring(nome from 5 for 10) from autor;

-- 48. Questão
select
	valor,
	data_emprestimo,
	case extract(month from data_emprestimo)
		when '01' then 'Janeiro'
		when '02' then 'Fevereiro'
		when '03' then 'Março'
		when '04' then 'Abril'
		when '05' then 'Maio'
		when '06' then 'Junho'
		when '07' then 'Julho'
		when '08' then 'Agosto'
		when '09' then 'Setembro'
		when '10' then 'Outubro'
		when '11' then 'Novembro'
		when '12' then 'Dezembro'
	end as mes
from
	emprestimo

-- 49. Questão
select
	data_emprestimo,
	valor
from
	emprestimo
where
	valor > (select avg(valor) from emprestimo)

-- 50. Questão
select
	emp.data_emprestimo,
	emp.valor,
	(select count(elv.idemprestimo) from emprestimo_livro elv where elv.idemprestimo = emp.idemprestimo) as quantidade_livros
from
	emprestimo emp
where
	(select
		count(elv.idemprestimo)
	from
		emprestimo_livro elv
	where
		elv.idemprestimo = emp.idemprestimo) > 1

-- 51. Questão
select
	data_emprestimo,
	valor
from
	emprestimo
where
	valor < (select sum(valor) from emprestimo)