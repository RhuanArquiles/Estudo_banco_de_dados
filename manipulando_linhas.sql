-- Manipulando linhas no banco de dados

-- linhas são tuplas ou registros
-- colunas são campos ou atributos
use cadastro ;

select * from gafanhotos;

select * from cursos;

insert into cursos values
('1','HTML4','Curos de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de photoshop cc','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à linguagem Java','10','29','2000'),
('6','MySQL','Banco de dados MySQL','30','15','2016'),
('7','Word','Curso completo Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

select * from cursos;

-- Modificando linhas incorretas

update cursos
set nome = 'HTML5' 
where idcurso = '1';

UPDATE cursos 
set nome = 'PHP' , ano ='2015'
where idcurso = '4';

UPDATE cursos
set nome ='Java', carga='40', ano = '2015'
where idcurso = '5'
limit 1; -- Limita a alteração para somente 1 linha

-- Remover linhas da minha tabela

DELETE from cursos
where idcurso = '8';

DELETE from cursos
where idcurso = '9';

DELETE from cursos
where idcurso = '10';


-- Apagando todas as linhas da table

TRUNCATE cursos;
