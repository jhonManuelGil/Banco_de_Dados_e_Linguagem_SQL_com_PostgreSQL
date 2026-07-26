
-- Script Database: pedido

create table cliente(
    idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11), -- not null ocupacional de acordo com a empresa para cpf
	rg varchar(15),
	data_nascimiento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemanto varchar(30),
	bairro varchar(30),
	municipipo varchar(30),
	uf varchar(30),
	observacoes text,

	-- primary kay
	constraint pk_cln_idcliente primary key (idcliente)
);


select * from cliente;


insert into cliente (idcliente, nome, cpf, rg, data_nascimiento, genero, profissao, nacionalidade, logradouro, numero, complemanto, bairro, municipipo,	uf)
values(1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'brasileira', 'Rua Joaquim Nabuco', '23', 'casa', 'Ciudade Nova', 'Porto União', 'SC')


insert into cliente (idcliente, nome, cpf, rg, data_nascimiento, genero, profissao, nacionalidade, logradouro, numero, complemanto, bairro, municipipo,	uf)
values(2, 'Geraldo', '1234329992912', '56565', '1987-01-04', 'M', 'Ingenheiro', 'brasileira', 'Rua as Lima', '200', 'Ap', 'Centro', 'Poro Uniao', 'SC')




select * from cliente;