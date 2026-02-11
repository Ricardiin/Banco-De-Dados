create database cadastro;
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