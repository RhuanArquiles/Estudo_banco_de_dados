-- Alterando a estrutura da table ALTER TABLE e DROP TABLE
create database cadastro1;
use cadastro1;
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

alter table pessoas
add column profissao varchar(10) after nome;
 
alter table pessoas
modify column profissao varchar(25) not null;


alter table pessoas
change column profissao prof varchar(25);
-- desc pessoas; -descreve a tabela

desc pessoas;
drop table pessoas;

alter table pessoas
drop column profissao;

select * from cadastro.pessoas;	