USE T_HRoads;

INSERT INTO Classes (Nome) VALUES ('Bárbaro'),('Cruzado'),('Caçadora de Demônios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista');
INSERT INTO TipoHabilidades (Nome) VALUES ('Ataque'),('Defesa'),('Cura'),('Magia');
INSERT INTO Habilidades (Nome, IdTipo) VALUES ('Lança Mortal', 1),('Escudo Supremo', 2),('Recuperar Vida', 3);
INSERT INTO ClasseHabilidade (IdClasse, IdHabilidade) VALUES (1,1),(1,2),(2,2),(3,1),(4,3),(4,2),(6,3);
INSERT INTO Personagem (Nome, CapacidadeMaxVida, CapacidadeMaxMana, DataAtualizacao, DataCriacao, IdClasse)
	VALUES('DeuBug',100,80, GETDATE(),'2019-01-18',1),
	('BitBug',70,100, GETDATE(),'2016-03-17',4),
	('Fer8',75,60, GETDATE(),'2018-03-18',7)

