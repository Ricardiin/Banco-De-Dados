create database cadastro;
drop database cadastro;
use cadastro;

create table pessoas(
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura  float,
nacionalidade varchar(20)
);

describe pessoas;

drop table pessoas;
drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('F','M','G'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
)default charset = utf8;

describe pessoas;

insert into pessoas
(nome, nascimento,sexo,peso,altura,nacionalidade)
values
('Sirlene','2008-10-16','F','64','1.70', default);

insert into pessoas values
(default,'José de assis','1970-04-15','M','70','1.65','Brasil');

insert into pessoas values
(default,'Peterson Sibilim de andrade','2004-10-30','G','70','1.80','Africa');

insert into pessoas values
(default,'Rafael Kersting','1998-04-15','G','90','1.78','Amazonia');

select * from pessoas;

create database vendas;
use vendas;

create table produtos(
codigo int primary key auto_increment,
nome varchar(100),
preco decimal(10,2)
)default charset = utf8;

describe produtos;

insert into produtos values
(default,'Caderno Inteligente','100'),
(default,'Caderno 1 matéria','9.80'),
(default,'Borracha','0.30'),
(default,'Pistola De Cola Quente Pequena Bivolt','19.99'),
(default,'Grampeador sem Grampo','24.00'),
(default,'Fitas Decorativas','5.50'),
(default,'Carimbo de Segurança','10.00'),
(default,'Canetas de Bambu/Sustentáveis','15.00'),
(default,'Kit 15 Itens Papelaria Criativa','30.50'),
(default,'250 Etiquetas Adesivas','10.43'),
(default,'Apontador com Depósito/Segurança','5.50'),
(default,'Estojo','14.75'),
(default,'Caderno 10M','18.99'),
(default,'Kit 10 Canetas Esferográficas Wow','15.99'),
(default,'Grafite','7.00');

drop table produtos;
drop table vendas;
select * from produtos;

use cadastro;
create table duplicata(
Número int primary key auto_increment,
Nome_Papelaria varchar(75),
Banco varchar(75),
Vencimento date,
Preço decimal (10,2)
)default charset = utf8;

describe  duplicata;

drop table duplicata;

select * from duplicata;

insert into duplicata values
(default,'Senac','Itaú','2026-05-30','750.00');

insert into duplicata values
(default,'Agata','Will Bank','2026-10-30','990.00');

insert into duplicata values
(default,'Papelaria Pepel','NuBank','2025-05-30','150.00');

insert into duplicata values
(default,'Silvas','PicPay','200-02-25','100.00');

insert into duplicata values
(default,'Expedição 33','Bradesco','2024-05-10','100000');

insert into duplicata values
(default,'KZAS','Sicredi','2024-05-02','175000');


-- colocar tudo 

insert into duplicata values
(default,'Senac','Itaú','2026-05-30','750.00'),
(default,'Agata','Will Bank','2026-10-30','990.00'),
(default,'Papelaria Pepel','NuBank','2025-05-30','150.00'),
(default,'Silvas','PicPay','200-02-25','100.00'),
(default,'Expedição 33','Bradesco','2024-05-10','170.00'),
(default,'KZAS','Sicredi','2024-05-02','175.00');

-- desc ou describe

desc duplicata;

select * from duplicata;

/*---------------------------------*/
/* Alteração da estrutura da tabela*/
/* Alter table altera a columna */

alter table pessoas
add column profissao varchar(30);

desc pessoas;
select * from pessoas;

alter table pessoas
drop column profissao;

/*drop column remove a coluna */

alter table pessoas
add column profissao varchar(30) AFTER nome;

/* Int first vai pro primeiro campo */
alter table pessoas
add column codigo int FIRST;

/*------- */

alter table pessoas
drop column codigo;

desc pessoas;

/* Alterar o varchar da tabela de (30) para (50)*/
alter table pessoas
modify column profissao varchar(50) not null;

/* Tirar o not null e colocar pra default*/
alter table pessoas
modify column profissao varchar(50)not null default '';

select * from pessoas;

/* Alterar o nome do campo de profissao>prof*/
alter table pessoas
change column profissao prof varchar(50) not null;

/* Alterar o nome da tabela de pessoas para Estudantes*/
alter table pessoas
rename to estudantes;
use cadastro;
/*----------------------------------------------------------------------*/
/* AULA 3 - 13/02/2026 */
create table if not exists cursos(
idcurso int not null auto_increment,
nome varchar(50) not null UNIQUE,
descricao text,
carga int UNSIGNED,
totalaulas int,
ano year default 2026,
primary key (idcurso)
)default charset = utf8;

desc cursos;
desc estudantes;

insert into cursos
values
(default, 'Algoriitimos', 'Lógica de programação. Você aprenderá sobre o desenvolvimento de soluções com aplicação da lógica de programação, que permite a criação de softwares amigáveis, seguros e funcionais.',
'40', '10', '2026'),

(default, 'Exel Essencl', 'Você aprenderá a criar planilhas e tabelas, fazer gráficos simples, além de salvar arquivos em nuvem e realizar cálculos usando fórmulas e funções de Excel básico.','40','10',2026),

(default, 'Excel Avçado I','Você aprofundará conhecimentos em funções do Excel avançado para otimizar cálculos e facilitar a construção de planilhas, banco de dados, relatórios e gráficos.','24','6',2026),

(default, 'Excel Avado II','Você saberá mais sobre ferramentas avançadas e em recursos de banco de dados no Excel para automatizar tarefas e aprimorar consultas, relatórios, gráficos e cálculos.','24','6','2027'),

(default, 'Form Excel: do básico ao avançado',
'Você aprenderá a inserir informações em planilhas, usando recursos, funções e ferramentas avançadas do Excel 365 para criar gráficos, fazer cálculos e manipular dados.','72','18',
'2027'),

(default, 'Desenvvidor Web Front-end 1',
'Você aprenderá a planejar e desenvolver sites responsivos com imagens.',
'60',
'15',
'2025'),

(default, 'Desenvolvedor GeWeb Front-end 2: JavaScript',
'Você aprenderá como utilizar a codificação JavaScript para criar e usar recursos básicos de interatividade em um site.',
'40',
'12',
'2025'),

(default, 'PHP co MySQL',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP e do gerenciador de banco de dados MySQL.',
'40',
'12',
'2026'),

(default, 'Lógica de Programação Direcionada a PHP',
'Você aprenderá a criar algoritmos e desenvolver aplicações e sistemas web com a linguagem de programação PHP.',
'40',
'12',
'2026'),

(default, 'PHP',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',
'24',
'6',
'2027'),

(default, 'PHP4',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',
'32',
'8',
'2027'),

(default, 'Photoshop',
'Você aprenderá como tratar, manipular e editar imagens, utilizando filtros, cores, efeitos de camada e demais recursos do Adobe Photoshop.',
'36',
'9',
'2025'),

(default, 'Phot para Mídias Sociais',
'Você aprenderá técnicas de criação, edição, composição e exportação de conteúdo gráfico para mídias sociais, utilizando recursos e ferramentas do Adobe Photoshop.',
'36',
'9',
'2025'),

(default, 'Pthon',
'Você aprenderá a desenvolver programação web por meio da linguagem Python.',
'32',
'8',
'2026'),

(default, 'Python I - funentos',
'Você aprenderá a desenvolver programação web por meio da linguagem Python, que possibilita a pesquisa e a extração de dados de páginas da internet.',
'2',
'11',
'2026'),

(default, 'Python II - desenvolvendo aplicações web',
'Você aprenderá a desenvolver soluções para a web aplicando linguagem Python em framework de projetos de software e a manipular banco de dados.',
'3',
'15',
'2027'),

(default, 'Introdução à Linem Java',
'Você aprenderá a prog aplicações básicas com a linguagem Java.',
'440',
'10',
'2026'),

(default, 'Fação Front-end',
'Você aprenderá a planejar e produzir site com imagens, linguagem HTML5, CSS3 e Web Semântica usando codificação JavaScript.',
'108',
'27',
'2026'),

(default, 'Desenvolvedor Web Back-end: NodeJs',
'Você aprenderá a configurar ambiente Node.js, desenvolvendo código JavaScript e executando no back-end. Também criará APTI Rest para acessar banco de dados e atender requisições HTTPs.',
'48',
'12',
'2026'),

(default, 'POO',
'Curso de Programação Orientada ao Objeto',
'60',
'15',
'2027'),

(default, 'C++',
'Curso de C++',
'40',
'10',
'2025'),

(default, 'C#',
'Curso de C#',
'24',
'6',
'2025'),

(default, 'PowerPoint',
'Curso completo de PowerPoint',
'24',
'6',
'2025'),

(default, 'Word',
'Curso completo de Word',
'24',
'6',
'2026'),

(default, 'Pacote Office',
'Curso de Word, PowerPoint e Excel',
'60',
'15',
'2027'),

(default, 'Hardware',
'Curso de Montagem e Manutenção de Computadores',
'36',
'9',
'2027'),

(default, 'Redes',
'Curso de Redes para Iniciantes',
'40',
'10',
'2027'),

(default, 'Segurança da Informação',
'Curso de Segurança',
'16',
'4',
'2026');

select * from cursos;

update cursos
set nome = 'Algoritmos'
where idcurso = '1';

update cursos
set nome = 'Excel para Iniciantes', carga = '36', totalaulas= '9'
where idcurso = '2';

select * from cursos;

update cursos
set ano = '2030'
where ano = '2026';

update cursos
set ano = '2028'
where ano = '2027'
limit 1;

select * from cursos;

/* 20/02/2026 - DELETE */
delete from cursos
where idcurso ='8';

select * from cursos;

delete from cursos
where ano = '2028';

delete from cursos
where ano = '2025'
limit 2;

/* ~~~~~~~~~~~~~~~~~~ */
truncate table cursos;
truncate cursos;

select * from cursos;

drop table cursos;

desc estudantes;
describe cursos;
select * from estudantes;
select * from cursos;

drop database cadastro;

use cadastro;
select * from cursos;

describe estudantes;

describe pessoas;

insert into pessoas
(nome, nascimento,sexo,peso,altura,nacionalidade)
values
('Ana Beatriz Almeida Souza','2008-10-16','F','58','1.65', default);

insert into pessoas values
(default,'Ana Beatriz Almeida Souza','1995-07-22','M','82','1.78','Brasil');

insert into pessoas values
(default,'Peterson Sibilim de andrade','2004-10-30','G','70','1.80','Africa');

insert into pessoas values
(default,'Rafael Kersting','1998-04-15','G','90','1.78','Amazonia');

/* ~~~~~~~~ */

drop table estudantes;

CREATE TABLE estudantes (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150),
nascimento DATE,
sexo CHAR(1),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(50),
profissao varchar(55)
)default charset = utf8;

INSERT INTO estudantes
VALUES
(default,'Ana Beatriz Almeida Souza','1998-03-15','F',58,1.65,'Brasileira','Professora'),
(default,'Carlos Eduardo Pereira Lima','1995-07-22','M',82,1.78,'Português','Engenheiro'),
(default,'Mariana Oliveira Santos','2001-11-09','F',64,1.70,'Brasileira','Atriz'),
(default,'João Victor Rodrigues Costa','1997-01-30','M',85,1.80,'Angolano','Cantor'),
(default,'Fernanda Martins Ribeiro','1999-05-18','F',55,1.62,'Brasileira','Do JOB'),
(default,'Lucas Henrique Alves Rocha','1996-12-03','M',76,1.75,'Argentino','Ator'),
(default,'Juliana Ferreira Gomes','2000-08-27','F',60,1.68,'Brasileira','Engenheira Civil'),
(default,'Pedro Henrique Barbosa Silva','1994-04-14','M',88,1.82,'Chileno','Pedreiro'),
(default,'Camila Dias Carvalho','2002-09-06','F',52,1.60,'Colombiana','Artista'),
(default,'Rafael Moreira Araújo','1993-02-25','M',79,1.77,'Brasileiro','Jogador de Futebol'),
(default,'Bruna Cardoso Monteiro','1998-10-12','F',59,1.66,'Portuguesa','Segurança'),
(default,'Felipe Nascimento Teixeira','1997-06-19','M',90,1.83,'Brasileiro','Medico'),
(default,'Larissa Batista Correia','2001-03-08','F',63,1.69,'Mexicana','Profeta'),
(default,'Gabriel Mendes Lopes','1995-11-21','M',74,1.74,'Brasileiro','Ator'),
(default,'Isabela Ramos Fernandes','1999-07-02','F',57,1.63,'Espanhola','Cantora'),
(default,'Thiago Gonçalves Vieira','1996-01-17','M',84,1.79,'Brasileiro','Engenheiro Eletrico'),
(default,'Amanda Castro Moura','2000-12-29','F',61,1.67,'Italiana','Dona de casa'),
(default,'Daniel Freitas Andrade','1994-05-10','M',87,1.81,'Brasileiro','Youtuber'),
(default,'Letícia Coutinho Duarte','2002-02-13','F',56,1.64,'Francesa','Streamer'),
(default,'Vinícius Pires Machado','1993-09-24','M',78,1.76,'Brasileiro','Analista de dados'),
(default,'Bianca Figueiredo Barros','1998-04-07','F',65,1.71,'Alemã','Barbeira'),
(default,'Gustavo Campos Tavares','1997-08-16','M',92,1.84,'Brasileiro','Açougueiro'),
(default,'Natália Rezende Melo','2001-06-05','F',50,1.59,'Canadense','Astronauta'),
(default,'Eduardo Siqueira Matos','1995-10-28','M',80,1.77,'Brasileiro','Vagabundo'),
(default,'Patricia Azevedo Brandão','1999-01-11','F',62,1.68,'Uruguaia','Dono de loja'),
(default,'Rodrigo Peixoto Neves','1996-03-26','M',75,1.73,'Brasileiro','Padre'),
(default,'Caroline Antunes Borges','2000-07-14','F',66,1.72,'Peruana','Dono de Padaria'),
(default,'Marcelo Cavalcante Torres','1994-12-20','M',95,1.85,'Brasileiro','Padeiro'),
(default,'Beatriz Sales Pinto','2002-05-03','F',54,1.61,'Venezuelana','Jogador de futebol'),
(default,'André Luiz Nogueira','1993-11-15','M',83,1.78,'Brasileiro','Streamer'),
(default,'Sabrina Rocha Albuquerque','1998-02-22','F',58,1.65,'Japonesa','Do JOB'),
(default,'Henrique Paiva Santana','1997-09-09','M',89,1.82,'Brasileiro','Video Maker'),
(default,'Vanessa Moraes Delgado','2001-04-18','F',60,1.66,'Chinesa','Psicologia'),
(default,'Caio César Martins','1995-06-30','M',81,1.79,'Brasileiro','Medico'),
(default,'Débora Cristina Lopes','1999-08-12','F',57,1.64,'Coreana','Pediatra'),
(default,'Leonardo Franco Bastos','1996-10-04','M',91,1.83,'Brasileiro','Atendente'),
(default,'Aline Cristina Cardoso','2000-01-27','F',63,1.70,'Australiana','Frentista'),
(default,'Bruno Henrique Farias','1994-03-19','M',98,1.86,'Brasileiro','Porteiro'),
(default,'Tatiane Lopes Guimarães','2002-07-08','F',55,1.62,'Indiana','Analista de dados'),
(default,'Igor Almeida Brito','1993-12-01','M',77,1.75,'Brasileiro','Telemarketing'),
(default,'Renata Vieira de Souza','1998-05-23','F',62,1.69,'Sul-africana','Gerente'),
(default,'Murilo Fernandes Castro','1997-11-14','M',86,1.80,'Brasileiro','Policial'),
(default,'Priscila Andrade Lima','2001-02-06','F',56,1.63,'Argentina','Psicologo'),
(default,'Alexandre Rodrigues Moreira','1995-09-17','M',93,1.84,'Brasileiro','Analista de Segurança da Informação'),
(default,'Yasmin Silva Couto','1999-04-29','F',49,1.58,'Marroquina','Analista de Big Data'),
(default,'Jonathan Pereira Duarte','1996-08-21','M',79,1.77,'Brasileiro','Full Stack'),
(default,'Elaine dos Santos Lima','2000-10-10','F',61,1.67,'Egípcia','Gestor de E-commerce'),
(default,'Mateus Ribeiro da Costa','1994-06-02','M',88,1.81,'Brasileiro','Contador'),
(default,'Raquel Martins Nunes','2002-03-25','F',53,1.60,'Holandesa','Gerente de Projetos'),
(default,'Diego Alves Teixeira','1993-07-13','M',84,1.78,'Brasileiro','Customer Success'),
(default,'Cristiane Rocha Mendes','1998-12-07','F',59,1.65,'Sueca','Consultor de Inteligência Artificial'),
(default,'Otávio Barbosa Freitas','1997-05-16','M',90,1.82,'Brasileiro','Engenheiro Civil'),
(default,'Simone Carvalho Dias','2001-01-05','F',60,1.66,'Suíça','Arquiteto'),
(default,'Wellington Araújo Pinto','1995-04-22','M',83,1.79,'Brasileiro','Tradutor'),
(default,'Jéssica Fernandes Ramos','1999-09-30','F',57,1.64,'Russa','Editor de Video'),
(default,'Fábio Gonçalves Ribeiro','1996-02-18','M',96,1.85,'Brasileiro','Cozinheiro'),
(default,'Karina Batista Lopes','2000-06-11','F',62,1.68,'Turca','Motorista de Aplicativo'),
(default,'Leandro Moreira Campos','1994-08-28','M',92,1.83,'Brasileiro','Flanelinha'),
(default,'Talita Nogueira Santos','2002-11-19','F',54,1.61,'Estadunidense','Jornalista'),
(default,'Márcio Henrique Oliveira','1993-10-09','M',87,1.80,'Brasileiro','Fotógrafo'),
(default,'Geovana Cosmo da Silva','2004-08-05','F','60','1.60','Brasileira','Barbeira');

select * from  estudantes;
drop table estudantes;

/* ~~~~~~  23/02/2026  ~~~~~~ */


use cadastro;
desc estudantes;

select * from estudantes
order by nome;

/* ordem de Z a A*/
select * from cursos
order by nome desc;

/*ordem de A a Z */
select * from cursos
order by nome asc;

select nome, ano,carga from cursos
order by nome;

/* COloca o resultado como ano em primeiro lugar em seguida o nome e depois a carga horaria */
select ano,nome ,carga from cursos
order by nome;

/* Filtra as colunas do ANO e NOME*/
select ano, nome from cursos
order by ano, nome;

/* Consegue separar as colunas com o comando desc ou asc depois  */
select ano, nome from cursos
order by ano desc, nome;

/* Seleciona todos os campos do anos de 2025*/
select * from cursos
where ano = '2025'
order by carga;

/* ResultSet*/
/*	< Menor que ' '
	> Maior que ' ' 
    = procura o nome que é igual a ' '
    <= menor ou igual ' '
    >= maior ou igual ' ' 
    != Diferente ' '
 */
select ano, nome from cursos
where  ano < '2027'
order by nome;

/* 02/03/2026 Segunda-Feira*/

use cadastro;
select * from cursos
where totalaulas between '15' and '30' 
order by nome; 

select nome, ano from cursos
where ano between 2024 and 2025  order by ano desc, nome;

select * from cursos
where ano IN (2026,2027)
order by ano;

select * from cursos
where carga > 35 AND totalaulas <20 order by carga;

select * from cursos
where carga > 35 OR totalaulas <20 order by carga;

select * from cursos
where nome = 'Algoritmos';

/* % Coringa busca %e = busca qualquer letra q venha dps ex officE. */

select * from cursos
where nome LIKE 'P%';

select * from cursos
where nome LIKE '%e';

select nome, ano from cursos
where nome like '%A%';

select * from cursos
where nome like 'E%L';

select * from cursos
where nome like 'C%';

select nome,ano from cursos
where nome like 'PH%P';

select nome, ano from cursos
where nome like 'PH%P_';

select nome, ano from cursos
where nome like 'P_P%';

select nome, ano from cursos
where nome like 'P__%';

select nome, ano from cursos
where nome like 'P___T%';

select * from estudantes
where nome like '%silva%';

insert into estudantes values
(default,'Silvana souza','1998-03-15','F','60.00','1.80','Brasileira','JOB');

select nome, profissao from estudantes
where nome like '%_silva%';

select distinct nacionalidade from estudantes
order by nacionalidade;

select * from cursos;

select distinct carga from cursos
order by carga;

select distinct totalaulas from cursos
order by totalaulas;

select count(nome) from cursos;

select count(*) from cursos;

select count(nome) from cursos
where carga > 40;

select count(*) from cursos
where carga > 40;

select count(*) from estudantes
where nacionalidade = 'Brasileira';

select max(carga) from cursos;

select max(carga) from cursos
where ano = '2027';

select min(carga) from cursos
where ano = '2027';

select min(totalaulas) from cursos where ano = '2026';

select sum(carga) from cursos;

select sum(carga) from cursos
where ano = 2026;

select avg(carga) from cursos
where ano = '2026';

select distinct carga from cursos 
order by carga;

select nome, carga from cursos
order by carga;

/* agrupa a carga */
select carga from cursos
group by carga;

select carga, count(*) from cursos
group by carga;

select totalaulas from cursos
group by totalaulas
order by totalaulas;

select totalaulas, count(*) from cursos
group by totalaulas
order by totalaulas;

select carga totalaulas from cursos
where totalaulas = 6
group by carga;

select ano, count(*) from cursos
group by ano
order by ano;

select ano, count(*) from cursos
group by ano
having count(ano) >7
order by ano;

select ano,count(*) from cursos
group by ano
having ano > 2026
order by ano;

select ano, count(*) from cursos
where carga >=40
group by ano
having ano >= 2026
order by ano;

select avg(Carga) from cursos;

select carga, count(*) from cursos
where ano = 2026
group by carga
having carga >= 38.03;

select carga, count(*) from cursos
where ano = 2026
group by carga
having carga >= (select avg(carga)
from cursos);

/* --------- Atividade - 02/03/2026 ----------- */

select * from  estudantes;
select nome,sexo from estudantes where sexo = 'F';

select nome, nascimento from estudantes
where nascimento between 2000 and 2013  order by nascimento;