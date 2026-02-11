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

create database vendas;
use vendas;

create table produtos(
codigo int primary key,
nome varchar(100),
preco decimal(10,2)
)default charset = utf8;

describe produtos;

insert into produtos values
(default,'Caderno Inteligente','100')
(default,'anetas Marca-texto em Tons Paste','100')
(default,'Caderno com Pins','100')
(default,'Estojo Grande Reparticionado','100')
(default,'Grampeador sem Grampo','100')
(default,'Fitas Decorativas','100')
(default,'Carimbo de Segurança','100')
(default,'Canetas de Bambu/Sustentáveis','100')
(default,'Kit 15 Itens Papelaria Criativa','100')
(default,'Caderno Capa Dura Temático','100')
(default,'Apontador com Depósito/Segurança','100')
(default,'Estojo','100')
(default,'Caderno 10M','100')
(default,'Livro','100')
(default,'Grafite','100');
