USE T_Gufos;

SELECT * FROM Categorias ORDER BY IdCategoria ASC;
SELECT * FROM Usuarios;
SELECT * FROM Eventos;
SELECT * FROM Presencas;

-- Selecionando Uma Tabela
SELECT Categorias.*, Eventos.*
FROM Categorias 
JOIN Eventos 
ON Categorias.IdCategoria = Eventos.IdCategoria;

-- Selecionando Três Tabelas
SELECT Categorias.*, Eventos.*, Usuarios.*, Presencas.*
FROM Presencas
JOIN Usuarios
ON Presencas.IdUsuario = Usuarios.IdUsuario
JOIN Eventos
ON Presencas.IdEvento = Eventos.IdEvento
JOIN Categorias
ON Eventos.IdCategoria = Eventos.IdCategoria
