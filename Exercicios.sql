-- Exercícios

-- 1 Uma lista com o nome de todas as gafanhotas
-- 2 Uma lista com o nome de todos aqueles que nasceram entre 1/Jan/2000 e 31/12/2000 -> Ordem de data YEAR-MONTH-DAY
-- 3 Uma lista com o nome de todos os homens que trabalham como programador
-- 4 Uma lista Uma lista com todos os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra J
-- 5 Uma lista com o nome e a nacionalidade de todos os homens que tem Silva no nome em qualquer lugar, nasceram no brasil e pesam menos de 100kg
-- 6 Qual a maior altura entre gafanhotos homens no Brasil
-- 7 Qual a média de peso dos gafanhotos cadastrados
-- 8 Qual o menos peso entre as gafanhotos mulheres que nasceram fora do Brasil entre 1990-01-01 e 2000-12-31
-- 9 Quantas gafanhotos mulheres têm mais de 1.90 de altura?

use cadastro;
desc gafanhotos;
select * from gafanhotos;
 -- Resolução exercício 1
select id, nome from gafanhotos where sexo = 'F' order by id;

-- Resolução exercício 2
select nome, nascimento from gafanhotos where nascimento between '2000-01-01' and '2000-12-31';

-- Resolução exercício 3
select nome, profissao from gafanhotos where profissao = 'Programador' and sexo = 'M';

-- Resolução exercício 4
select * from gafanhotos where sexo = 'F'and nacionalidade = 'Brasil' and nome like 'J%';

-- Resolução exercício 5
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%Silva' and nacionalidade = 'Brasil' and peso < '100.00';

-- Resolução exercício 6
select max(altura) from gafanhotos where sexo = 'M';

-- Resolução exercício 7
select avg(peso) from gafanhotos;
 

-- Resolução exercício 8
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9 Quantas gafanhotos mulheres têm mais de 1.90 de altura?
-- Resolução exercício 9 
select count(nome) from gafanhotos where sexo = 'F' and altura > '1.90';
