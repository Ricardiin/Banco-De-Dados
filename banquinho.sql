use cadastro;

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
);

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