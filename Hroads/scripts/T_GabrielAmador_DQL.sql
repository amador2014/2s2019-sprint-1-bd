USE T_HRoads;

UPDATE Personagem SET Nome = 'Fer7' WHERE IdPersonagem = 3;

SELECT * FROM Personagem;
SELECT * FROM Classes;
SELECT Nome FROM Classes;
SELECT * FROM Habilidades;
SELECT COUNT (IdHabilidade) FROM Habilidades;
SELECT IdHabilidade FROM Habilidades ORDER BY IdHabilidade ASC;
SELECT * FROM TipoHabilidades;

SELECT Habilidades.*, TipoHabilidades.*
FROM Habilidades JOIN TipoHabilidades
ON Habilidades.IdTipo = TipoHabilidades.IdTipo; 

SELECT Personagem.*, Classes.*
FROM Personagem JOIN Classes
ON Personagem.IdClasse = Classes.IdClasse; 

SELECT Personagem.*, Classes.*
FROM Personagem FULL JOIN Classes
ON Personagem.IdClasse = Classes.IdClasse; 

SELECT Habilidades.*, Classes.*, ClasseHabilidade.*
FROM ClasseHabilidade FULL  JOIN Classes
ON ClasseHabilidade.IdClasse = Classes.IdClasse
JOIN Habilidades
ON ClasseHabilidade.IdHabilidade = Habilidades.IdHabilidade;

SELECT Habilidades.*, Classes.*, ClasseHabilidade.*
FROM ClasseHabilidade INNER JOIN Classes
ON ClasseHabilidade.IdClasse = Classes.IdClasse
JOIN Habilidades
ON ClasseHabilidade.IdHabilidade = Habilidades.IdHabilidade;

SELECT Habilidades.*, Classes.*, ClasseHabilidade.*
FROM ClasseHabilidade FULL JOIN Classes
ON ClasseHabilidade.IdClasse = Classes.IdClasse
JOIN Habilidades
ON ClasseHabilidade.IdHabilidade = Habilidades.IdHabilidade;

SELECT * FROM ClasseHabilidade;
