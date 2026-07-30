
-- ###### Script Database: pedido ######

create table cliente(
    idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11), -- not null ocupacional de acordo com a empresa para cpf
	rg varchar(15),
	data_nascimiento date, -- correção data_nascimento
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

ALTER TABLE cliente RENAME COLUMN municipipo TO municipio;

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

select nome from cliente order by nome asc;


-- ========== Exercícios – consultas simples ==========

/* Exercícios – consultas simples

1 O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
2 Os clientes que tenham a letra “R” no nome
3 Os clientes que o nome inicia com a letra “C”
4 Os clientes que o nome termina com a letra “A”
5 Os clientes que moram no bairro “Centro”
6 Os clientes que moram em complementos que iniciam com a letra “A”
Somente os clientes do sexo feminino
7 Os clientes que não informaram o CPF
8 O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
9 Os clientes de nacionalidade “Brasileira”
10 Os clientes que informaram o número da residência
11 Os clientes que moram em Santa Catarina
12 Os clientes que nasceram entre 01/01/2000 e 01/01/2002
13 O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes

*/



/*1*/ select nome, profissao from cliente order by nome desc;

/*2*/ select nome from cliente where nome like '%r%';

/*3*/select nome from cliente where nome like 'C%'

/*4*/select nome from cliente where nome like '%a'

/*5*/select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';

/*6*/select nome, complemanto from cliente where complemanto  like 'A%'

/*7*/select nome, genero from cliente where genero like 'F'

/*8*/select nome, cpf from cliente where cpf is null;

/*9*/select nome, profissao from cliente order by profissao asc;

/*10*/select nome, nacionalidade from cliente where nacionalidade like 'Brasil%';

/*11*/select nome, numero from cliente where numero is not null;

/*12*/select nome, uf from cliente where uf like 'SC';

/*13*/ select nome, data_nascimento from cliente where data_nascimento between '200-01-01' and '2002-01-01';

/*14*/select 'nome: ' || nome || ' / logradouro: ' || logradouro || ' / numero: ' || numero || ' / complemanto: ' || complemanto || ' / bairro: ' || bairro || ' / municipio: ' || municipio || ' / UF: ' || UF  from cliente ;    



Select * from cliente;
 
-- ========== Fim ==========


Select * from cliente;



update cliente set nome = 'Teste' where idcliente = 1; -- Manoel para Teste siempre indicar o nomer do cliente

update cliente set nome = 'Adriano', genero = 'M', numero ='241' where idcliente = 4; 

insert into cliente (idcliente, nome) values (16, 'João');

delete from cliente where idcliente = 16;


-- ========== Exercícios – comandos update e delete ==========
/*
1 Insira os dados abaixo na tabela de clientes
----
2 Altere os dados do cliente Maicon
  O CPF para 45390569432
  O gênero para M
  A nacionalidade para Brasileira
  O UF para SC
-------
3 Altere os dados do cliente Getúlio
  A data de nascimento para 01/04/1978
  O gênero para M
------
3 Altere os dados da cliente Sandra
  O gênero para F
  4 A profissão para Professora
  O número para 123
----
5 Apague o cliente Maicon
-----
6 Apague a cliente Sandra


*/

/*1*/insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemanto, bairro, municipio, uf)
VALUES 
(16, 'Maicon', '12349596421', '1234', '10/10/1965', 'F', 'null', 'null', 'null', null, 'null.', 'hull.', 'Florianópolis', 'PR'),					
(17, 'Getúlio', 'null', '4631', '10/10/1958', 'F', 'Estudante', 'Brasileira', 'Rua Central', 343, 'Apartamento.', 'Centro.', 'Curitiba', 'SC'),						
(18, 'Sandra', 'null', 'null', '18/10/1989', 'M', 'Professor', 'Italiana', 'null', 12, 'Bloco A.', 'null.', 'null', 'null')
                        
Select * from cliente;

/*2*/update cliente set nome = 'Maicon', cpf ='45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16; 

/*3*/update cliente set nome = 'Getúlio', genero = 'M', data_nascimento ='01/04/1978' where idcliente = 17; 

/*4*/update cliente set nome = 'Sandra', genero = 'F', profissao ='Professora', numero = '123' where idcliente = 18; 

/*5*/delete from cliente where idcliente = 16;

/*6*/delete from cliente where idcliente = 18;

/*5 e 6*/delete from cliente where idcliente in (16, 18); -- se elimina os dois

-- ========== Fim ==========































































































