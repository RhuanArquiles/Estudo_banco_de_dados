-- drop database cadastro; -- Apaga o banco de dados "cadastro"
-- adicionando constraints 2 parâmetros

create database cadastro 
default character set utf8mb4 -- São caracteres acentuados no padrão da língua
default collate utf8mb4_general_ci ; -- São caracteres acentuados no padrão da língua

create table `pessoas` ( -- Posso indicar o nome de uma table entre crases
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'), -- Define as respostas que serão aceitas na hora da população da tabela
peso decimal (5,2),
altura decimal (3,2), -- Define a quantidade de casas decimais, no caso 3 e apenas 2 após a ","
nacionalidade varchar(20) default 'Brasil',
primary key (id) -- importante ter uma chave primária para evitar conflitos de cadastros iguais.
)default charset utf8mb4; 

-- insert into pessoas  ( nome , nascimento , sexo , peso , altura , nacionalidade ) values -> Se
-- a ordem de população da tabela for exatamente igual a ordem da tabela, eu não preciso declarar os campos novamente!
-- Populando o banco 
insert into pessoas values 

(default,'Rhuan Arquiles','2000-12-07','M','78.5','1.73','Brasil'),
(default,'Pituca','2023-12-31','F','5.00','0.55', 'São Lourenço'),
(default,'Creusa','1920-12-30','F','50.2','1.65',default);

-- cadastrando mais de uma pessoa com o mesmo insert into --

select * from cadastro.pessoas;

-- Comandos que são DDL - COMANDOS DE CRIAÇÃO
-- Comandos que são DML - COMANDOS DE MANIPULAÇÃO