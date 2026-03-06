create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table estudantes(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(50),
nascimento date,
sexo enum('F','M'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
)default charset = utf8;

create table if not exists cursos(
idcurso int not null auto_increment,
nome varchar(50) not null UNIQUE,
descricao text,
carga int UNSIGNED,
totalaulas int,
ano year default 2026,
primary key (idcurso)
)default charset = utf8;

INSERT INTO estudantes (id, nome, profissao, nascimento, sexo, peso, altura, nacionalidade) VALUES
(DEFAULT, 'Ana Beatriz Almeida Souza', 'Engenheira Civil', '1998-03-15', 'F', 58, 1.65, 'Brasileira'),
(DEFAULT, 'Carlos Eduardo Pereira Lima', 'Analista de Sistemas', '1995-07-22', 'M', 82, 1.78, 'Português'),
(DEFAULT, 'Mariana Oliveira Santos', 'Enfermeira', '2001-11-09', 'F', 64, 1.70, 'Brasileira'),
(DEFAULT, 'João Victor Rodrigues Costa', 'Professor', '1997-01-30', 'M', 85, 1.80, 'Angolano'),
(DEFAULT, 'Fernanda Martins Ribeiro', 'Arquiteta', '1999-05-18', 'F', 55, 1.62, 'Brasileira'),
(DEFAULT, 'Lucas Henrique Alves Rocha', 'Administrador', '1996-12-03', 'M', 76, 1.75, 'Argentino'),
(DEFAULT, 'Juliana Ferreira Gomes', 'Psicóloga', '2000-08-27', 'F', 60, 1.68, 'Brasileira'),
(DEFAULT, 'Pedro Henrique Barbosa Silva', 'Engenheiro Mecânico', '1994-04-14', 'M', 88, 1.82, 'Chileno'),
(DEFAULT, 'Camila Dias Carvalho', 'Designer Gráfico', '2002-09-06', 'F', 52, 1.60, 'Colombiana'),
(DEFAULT, 'Rafael Moreira Araújo', 'Contador', '1993-02-25', 'M', 79, 1.77, 'Brasileiro'),
(DEFAULT, 'Bruna Cardoso Monteiro', 'Farmacêutica', '1998-10-12', 'F', 59, 1.66, 'Portuguesa'),
(DEFAULT, 'Felipe Nascimento Teixeira', 'Desenvolvedor', '1997-06-19', 'M', 90, 1.83, 'Brasileiro'),
(DEFAULT, 'Larissa Batista Correia', 'Dentista', '2001-03-08', 'F', 63, 1.69, 'Mexicana'),
(DEFAULT, 'Gabriel Mendes Lopes', 'Técnico em Informática', '1995-11-21', 'M', 74, 1.74, 'Brasileiro'),
(DEFAULT, 'Isabela Ramos Fernandes', 'Jornalista', '1999-07-02', 'F', 57, 1.63, 'Espanhola'),
(DEFAULT, 'Thiago Gonçalves Vieira', 'Engenheiro Elétrico', '1996-01-17', 'M', 84, 1.79, 'Brasileiro'),
(DEFAULT, 'Amanda Castro Moura', 'Nutricionista', '2000-12-29', 'F', 61, 1.67, 'Italiana'),
(DEFAULT, 'Daniel Freitas Andrade', 'Advogado', '1994-05-10', 'M', 87, 1.81, 'Brasileiro'),
(DEFAULT, 'Letícia Coutinho Duarte', 'Fisioterapeuta', '2002-02-13', 'F', 56, 1.64, 'Francesa'),
(DEFAULT, 'Vinícius Pires Machado', 'Economista', '1993-09-24', 'M', 78, 1.76, 'Brasileiro'),
(DEFAULT, 'Bianca Figueiredo Barros', 'Bióloga', '1998-04-07', 'F', 65, 1.71, 'Alemã'),
(DEFAULT, 'Gustavo Campos Tavares', 'Engenheiro de Produção', '1997-08-16', 'M', 92, 1.84, 'Brasileiro'),
(DEFAULT, 'Natália Rezende Melo', 'Veterinária', '2001-06-05', 'F', 50, 1.59, 'Canadense'),
(DEFAULT, 'Eduardo Siqueira Matos', 'Médico', '1995-10-28', 'M', 80, 1.77, 'Brasileiro'),
(DEFAULT, 'Patricia Azevedo Brandão', 'Assistente Social', '1999-01-11', 'F', 62, 1.68, 'Uruguaia'),
(DEFAULT, 'Rodrigo Peixoto Neves', 'Programador', '1996-03-26', 'M', 75, 1.73, 'Brasileiro'),
(DEFAULT, 'Caroline Antunes Borges', 'Publicitária', '2000-07-14', 'F', 66, 1.72, 'Peruana'),
(DEFAULT, 'Marcelo Cavalcante Torres', 'Empresário', '1994-12-20', 'M', 95, 1.85, 'Brasileiro'),
(DEFAULT, 'Beatriz Sales Pinto', 'Estudante', '2002-05-03', 'F', 54, 1.61, 'Venezuelana'),
(DEFAULT, 'André Luiz Nogueira', 'Consultor Financeiro', '1993-11-15', 'M', 83, 1.78, 'Brasileiro'),
(DEFAULT, 'Sabrina Rocha Albuquerque', 'Tradutora', '1998-02-22', 'F', 58, 1.65, 'Japonesa'),
(DEFAULT, 'Henrique Paiva Santana', 'Arquiteto de Software', '1997-09-09', 'M', 89, 1.82, 'Brasileiro'),
(DEFAULT, 'Vanessa Moraes Delgado', 'Professora', '2001-04-18', 'F', 60, 1.66, 'Chinesa'),
(DEFAULT, 'Caio César Martins', 'Analista Financeiro', '1995-06-30', 'M', 81, 1.79, 'Brasileiro'),
(DEFAULT, 'Débora Cristina Lopes', 'Psicopedagoga', '1999-08-12', 'F', 57, 1.64, 'Coreana'),
(DEFAULT, 'Leonardo Franco Bastos', 'Engenheiro Civil', '1996-10-04', 'M', 91, 1.83, 'Brasileiro'),
(DEFAULT, 'Aline Cristina Cardoso', 'Designer de Interiores', '2000-01-27', 'F', 63, 1.70, 'Australiana'),
(DEFAULT, 'Bruno Henrique Farias', 'Policial', '1994-03-19', 'M', 98, 1.86, 'Brasileiro'),
(DEFAULT, 'Tatiane Lopes Guimarães', 'Médica', '2002-07-08', 'F', 55, 1.62, 'Indiana'),
(DEFAULT, 'Igor Almeida Brito', 'Analista de Redes', '1993-12-01', 'M', 77, 1.75, 'Brasileiro'),
(DEFAULT, 'Renata Vieira de Souza', 'Fotógrafa', '1998-05-23', 'F', 62, 1.69, 'Sul-africana'),
(DEFAULT, 'Murilo Fernandes Castro', 'Engenheiro de Software', '1997-11-14', 'M', 86, 1.80, 'Brasileiro'),
(DEFAULT, 'Priscila Andrade Lima', 'Secretária', '2001-02-06', 'F', 56, 1.63, 'Argentina'),
(DEFAULT, 'Alexandre Rodrigues Moreira', 'Gestor de Projetos', '1995-09-17', 'M', 93, 1.84, 'Brasileiro'),
(DEFAULT, 'Yasmin Silva Couto', 'Modelo', '1999-04-29', 'F', 49, 1.58, 'Marroquina'),
(DEFAULT, 'Jonathan Pereira Duarte', 'Engenheiro Mecatrônico', '1996-08-21', 'M', 79, 1.77, 'Brasileiro'),
(DEFAULT, 'Elaine dos Santos Lima', 'Recepcionista', '2000-10-10', 'F', 61, 1.67, 'Egípcia'),
(DEFAULT, 'Mateus Ribeiro da Costa', 'Administrador', '1994-06-02', 'M', 88, 1.81, 'Brasileiro'),
(DEFAULT, 'Raquel Martins Nunes', 'Pesquisadora', '2002-03-25', 'F', 53, 1.60, 'Holandesa'),
(DEFAULT, 'Diego Alves Teixeira', 'Técnico em Eletrônica', '1993-07-13', 'M', 84, 1.78, 'Brasileiro'),
(DEFAULT, 'Cristiane Rocha Mendes', 'Enfermeira', '1998-12-07', 'F', 59, 1.65, 'Sueca'),
(DEFAULT, 'Otávio Barbosa Freitas', 'Engenheiro de Produção', '1997-05-16', 'M', 90, 1.82, 'Brasileiro'),
(DEFAULT, 'Simone Carvalho Dias', 'Gerente Comercial', '2001-01-05', 'F', 60, 1.66, 'Suíça'),
(DEFAULT, 'Wellington Araújo Pinto', 'Motorista', '1995-04-22', 'M', 83, 1.79, 'Brasileiro'),
(DEFAULT, 'Jéssica Fernandes Ramos', 'Atriz', '1999-09-30', 'F', 57, 1.64, 'Russa'),
(DEFAULT, 'Fábio Gonçalves Ribeiro', 'Empresário', '1996-02-18', 'M', 96, 1.85, 'Brasileiro'),
(DEFAULT, 'Karina Batista Lopes', 'Arquiteta', '2000-06-11', 'F', 62, 1.68, 'Turca'),
(DEFAULT, 'Leandro Moreira Campos', 'Engenheiro Mecânico', '1994-08-28', 'M', 92, 1.83, 'Brasileiro'),
(DEFAULT, 'Talita Nogueira Santos', 'Estudante', '2002-11-19', 'F', 54, 1.61, 'Estadunidense'),
(DEFAULT, 'Márcio Henrique Oliveira', 'Administrador', '1993-10-09', 'M', 87, 1.80, 'Bras');

use cadastro;
truncate estudantes;

create table assiste(
id int not null auto_increment,
data date,
idestudante int,
idcursos int,
primary key (id),
foreign key (idestudante) references estudantes(id),
foreign key (idcursos) references cursos(idcurso)
)default charset =utf8;

desc estudantes;
desc cursos;
desc assiste;

insert into assiste values
(default, '2026-03-05','5','1');

select * from assiste;

insert into assiste values
(default, '2026-03-04','5','5'),
(default, '2026-03-06','10','2'),
(default, '2026-03-03','3','3'),
(default, '2026-03-02','7','8'),
(default, '2026-03-06','1','10');

/* Juntandoa chave primaria com a chave estrangeira*/
select * from estudantes
join assiste
on estudantes.id= assiste.idestudante;


select estudantes.id, estudantes.nome from estudantes
join assiste
on estudantes.id= assiste.idestudante;

/* */

select e.id,e.nome, a.idestudante;

select e.nome, a.idcursos from estudantes as e 
join assiste as a
on e.id= a.idestudante;

select e.nome, c.nome from estudantes as e
join assiste as e
on e.id = a.idestudante
join cursos as c
on c.idcurso = a.idcursos
order by e.nome;


select * from estudantes;
truncate table estudantes;
drop table estudantes;
use cadastro;
delete from estudantes;