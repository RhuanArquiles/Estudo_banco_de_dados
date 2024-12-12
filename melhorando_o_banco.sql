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

