
-- ###### Script Database: pedido ######

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
values(2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Ingenheiro', 'brasileira', 'Rua as Lima', '200', 'Ap', 'Centro', 'Poro Uniao', 'SC')

insert into cliente (idcliente, nome, cpf, rg, data_nascimiento, genero, profissao, nacionalidade, logradouro, numero, complemanto, bairro, municipipo,	uf)
VALUES
(3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', 300, 'Apart.', 'Cto.', 'Canoinhas', 'SC'),
(4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', 240, 'Casa', 'São Pedro', 'Porto Vitória', 'PR'),
(5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', 100, NULL, 'São Pedro', 'General Carneiro', 'PR'),
(6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', 300, NULL, 'Ctr.', 'São Paulo', 'SP'),
(7, 'Anderson', NULL, NULL, NULL, 'M', 'Prof.', 'Italiano', 'Av. Brasil', 100, 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP'),
(8, 'Camila', '9998282828', NULL, '2001-10-10', 'F', 'Professora', 'Norte americana', 'Rua Central', 4333, NULL, 'Centro', 'Uberlândia', 'MG'),
(9, 'Cristiano', NULL, NULL, NULL, 'M', 'Estudante', 'Alemã', 'Rua do Centro', 877, 'Casa', 'Centro', 'Porto Alegre', 'RS'),
(10, 'Fabrício', '8828282828', '32323', NULL, 'M', 'Estudante', 'Brasileiro', NULL, NULL, NULL, NULL, 'PU', 'SC'),
(11, 'Fernanda', NULL, NULL, NULL, 'F', NULL, 'Brasileira', NULL, NULL, NULL, NULL, 'Porto União', 'SC'),
(12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', NULL, 'Rua das Laranjeiras', 200, NULL, 'C. Nova', 'Canoinhas', 'SC'),
(13, 'Diego', '1010191919', '111939', NULL, 'M', 'Professor', 'Alemão', 'Rua Central', 455, 'Casa', 'Cidade N.', 'São Paulo', 'SP'),
(14, 'Jeferson', NULL, NULL, '1983-07-01', 'M', NULL, 'Brasileiro', NULL, NULL, NULL, NULL, 'União da Vitória', 'PR'),
(15, 'Jessica', NULL, NULL, NULL, 'F', 'Estudante', NULL, NULL, NULL, NULL, NULL, 'União da Vitória', 'PR');


select * from cliente;

-- ###### Consulta de filtro de valor de dados ######

Select * from cliente;

select nome, data_nascimiento from cliente;

select nome, data_nascimiento as "Data de nascimento" from cliente;
select data_nascimiento as "data_nascimento" from cliente;

-- alterar nome da coluna
ALTER TABLE cliente RENAME COLUMN data_nascimiento TO data_nascimento;

select cpf, rg from cliente;

-- concatenar 
select 'CPF: ' || cpf ||  'rg: ' || rg as "CPF e RG" from cliente;


-- Seleção do número determinado de registro

select * from cliente limit 5;

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente;

select nome, rg from cliente where rg is null;

select nome from cliente order by nome;

select nome from cliente order by nome desc;

















