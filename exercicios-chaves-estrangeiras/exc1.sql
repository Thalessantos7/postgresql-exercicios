create table fornecedor (

	idfornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_fnc_idfornecedor primary key (idfornecedor),
	constraint un_fnc_nome unique (nome)
	
);

insert into fornecedor(idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor(idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor(idfornecedor, nome) values (3, 'BB. Máquinas');

select * from fornecedor;

create table vendedor (

	idvendedor integer not null,
	nome varchar(50) not null,

	constraint pk_vdr_idvendedor primary key (idvendedor),
	constraint un_vdr_nome unique (nome)

);

insert into vendedor(idvendedor, nome) values (1, 'André');
insert into vendedor(idvendedor, nome) values (2, 'Alisson');
insert into vendedor(idvendedor, nome) values (3, 'José');
insert into vendedor(idvendedor, nome) values (4, 'Ailton');
insert into vendedor(idvendedor, nome) values (5, 'Maria');
insert into vendedor(idvendedor, nome) values (6, 'Suelem');
insert into vendedor(idvendedor, nome) values (7, 'Aline');
insert into vendedor(idvendedor, nome) values (8, 'Silvana');

select * from vendedor;

create table transportadora (

	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),

	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint fk_trn_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_trn_nome unique (nome)

);

select * from municipio;

insert into transportadora(idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');

insert into transportadora(idtransportadora, idmunicipio, nome, logradouro, numero)
values (2, 5, 'União Transportes', null, null);

select * from transportadora;

create table produto (

	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,

	constraint pk_prd_idproduto primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)

);

select * from fornecedor;

insert into produto(idproduto, idfornecedor, nome, valor)
values (1, 1, 'Microcomputador', 800);

insert into produto(idproduto, idfornecedor, nome, valor)
values (2, 1, 'Monitor', 500);

insert into produto(idproduto, idfornecedor, nome, valor)
values (3, 2, 'Placa mãe', 200);

insert into produto(idproduto, idfornecedor, nome, valor)
values (4, 2, 'HD', 150);

insert into produto(idproduto, idfornecedor, nome, valor)
values (5, 2, 'Placa de Vídeo', 200);

insert into produto(idproduto, idfornecedor, nome, valor)
values (6, 3, 'Memória RAM', 100);

insert into produto(idproduto, idfornecedor, nome, valor)
values (7, 1, 'Gabinete', 35);

select * from produto;