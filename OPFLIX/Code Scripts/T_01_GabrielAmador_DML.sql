USE T_Opflix;

INSERT INTO Perfil (TipoPerfil) VALUES ('Admin'),('Comum');
INSERT INTO TipoConteudo(Nome) VALUES ('Filme'),('Série');
INSERT INTO Plataformas (Nome) VALUES ('Netflix'),('Amazon'),('Cinema'), ('VHS');
INSERT INTO Categorias (Nome) VALUES ('Terror'),('Romance'),('Aventura'),('Ação'),('Comédia'),('Drama'),('Ficção Cientifica');
INSERT INTO Usuarios (Nome, Email, Senha, IdPerfil) 
   VALUES ('Erik','erik@email.com','123456', 1 ),('Helena','helena@email.com','123456', 2 ),
		  ('Roberto','rob@email.com','3110', 2 ),('Cassiana','cassiana@email.com','123456', 1 );

INSERT INTO Lancamentos (DataLancamento, Duracao, Titulo, Sinopse, IdCategoria, IdTipoConteudo)
VALUES  ('25-10-2012','01:16:04','A Culpa é das Estrelas','...', 2, 1),
	    ('24-08-2000','01:18:04','Get Out','...', 1, 1),
	    ('15-01-2000','01:16:04','Love','...', 2, 2),
		('02-05-2000','15:15:15','Teen Wolf','...', 3, 2),
		('21-10-2011','02:00:00','O Rei Leão','...', 3, 1),
		('18-04-2019','22:16:04','American Gods','...', 7, 2),
		('19-01-2000','23:00:00','La Casa de Papel','...', 4, 2);

INSERT INTO PlataformaLancamento (IdPlataforma, IdLancamento)  
VALUES (1,1),(2,1),(3,1),(1,2),(3,3),(2,3),(1,4),(3,4),(3,5),(2,5),(1,6),(3,7);
INSERT INTO PlataformaLancamento (IdPlataforma, IdLancamento) VALUES (4,5);

---------------------------- EXTRAS -------------------------------

DELETE FROM PlataformaLancamento WHERE IdLancamento = 6;
DELETE FROM Lancamentos WHERE IdLancamento = 6;
DELETE FROM PlataformaLancamento WHERE IdLancamento = 5;

UPDATE Lancamentos SET Titulo = 'La Casa de Papel 3º Temporada' WHERE IdLancamento = 7;
UPDATE Usuarios SET IdPerfil = 1 WHERE IdUsuario = 2;
UPDATE Lancamentos SET DataLancamento = '08/07/1994' WHERE IdLancamento = 5;
UPDATE PlataformaLancamento SET IdPlataforma = 4 WHERE IdLancamento = 5;

INSERT INTO Lancamentos (DataLancamento, Duracao, Titulo, Sinopse, IdCategoria, IdTipoConteudo)
VALUES  ('25-10-2012','01:16:04','Velozes e Furiosos: Hobbs & Shaw','...', 4, 1),
	    ('24-08-2000','02:00:04','Toy Story 4','...', 7, 1),
	    ('15-01-2000','03:57:00','Nada a Perder – Parte 2','...', 4, 1);

UPDATE Usuarios SET FotoPerfil = 'https://abrilexame.files.wordpress.com/2018/10/capaprofile.jpg?quality=70&strip=info&resize=680,453';
--(Todos estão com fotos iguais, o que não é proibido');

INSERT INTO Lancamentos (DataLancamento, Duracao, Titulo, Sinopse, IdCategoria, IdTipoConteudo)
VALUES  ('25-10-2012','01:16:04','Os Guardiões da Galáxia','...', 7, 1),
	    ('24-08-2000','01:18:04','Os Guardiões da Galáxia','...', 7, 1)

INSERT INTO PlataformaLancamento (IdPlataforma, IdLancamento) VALUES (3,11), (1,12);




