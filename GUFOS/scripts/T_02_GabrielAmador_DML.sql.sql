USE T_Gufos;

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
	VALUES  ('Rayssa','ray@gmail.com','r123456','ALUNO'),
			('Cleyton','c.y@gmail.com','123456','ADMINISTRADOR');

INSERT INTO Categorias (Nome) VALUES ('Jogos'), ('MeetUp'), ('Futebol');

INSERT INTO Eventos (Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
	VALUES ('Campeonato de Ping-pong', 'Campeonato entre as turmas de tec. de redes e dev', GETDATE(), 1, 'Alameda Barão de Limeira, 539',1);
	--getdate pega a data do servidor, mas de q modo, veja a documentação

INSERT INTO Eventos (Titulo, Descricao, DataEvento, Localizacao, IdCategoria)
	VALUES ('Meetup', 'BD Relacionais', '2019-08-06T18:00:00' , 'Alameda Barão de Limeira, 539',2);

INSERT INTO Eventos (Titulo, Descricao, DataEvento, Localizacao, IdCategoria)
	VALUES ('Futebol no Terraço', 'Do Núcleo de Desenvolvimento Senai', '2019-08-06T18:00:00' , 'Alameda Barão de Limeira, 539',2);

INSERT INTO Presencas (IdEvento, IdUsuario) VALUES (1,2),(1,1),(2,2);

SELECT * FROM Categorias ORDER BY IdCategoria ASC;
SELECT * FROM Usuarios;
SELECT * FROM Eventos;
SELECT * FROM Presencas;

UPDATE Eventos SET IdCategoria = 3 WHERE IdEvento = 3;