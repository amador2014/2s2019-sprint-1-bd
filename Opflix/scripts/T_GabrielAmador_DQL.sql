USE T_Opflix;

------------ JOINS --------------------

SELECT Lancamentos.DataLancamento,Lancamentos.Duracao,Lancamentos.Titulo,Lancamentos.Sinopse, TipoConteudo.Nome AS Conteudo, Categorias.Nome AS Categorias
FROM Lancamentos JOIN TipoConteudo
ON Lancamentos.IdTipoConteudo = TipoConteudo.IdTipoConteudo
JOIN Categorias ON Lancamentos.IdCategoria = Categorias.IdCategoria;

-------------- SELECTS -----------------

SELECT * FROM Categorias;
SELECT * FROM PlataformaLancamento;

-------------- FUNCTIONS ---------------

CREATE FUNCTION ListarCategorias()
RETURNS TABLE AS RETURN SELECT IdCategoria, Nome FROM Categorias;

CREATE FUNCTION ListarPlataformas()
RETURNS TABLE AS RETURN SELECT IdPlataforma, Nome FROM Plataformas;

CREATE FUNCTION ListarLancamentos()
RETURNS TABLE AS RETURN SELECT * FROM Lancamentos;

CREATE FUNCTION ListarUsuarios()
RETURNS TABLE AS RETURN SELECT IdUsuario,Nome,Email,IdPerfil FROM Usuarios;

SELECT * FROM ListarCategorias() ORDER BY IdCategoria ASC;
SELECT * FROM ListarPlataformas() ORDER BY IdPlataforma ASC;
SELECT * FROM ListarLancamentos() ORDER BY IdLancamento ASC;
SELECT * FROM ListarUsuarios() ORDER BY IdUsuario ASC;

------------ PROCEDURES -----------------

CREATE PROCEDURE ListarFilmePorCategoria @Categoria VARCHAR(250) 
AS 
SELECT * FROM Lancamentos
JOIN Categorias 
ON Lancamentos.IdCategoria = Categorias.IdCategoria
WHERE Categorias.Nome = @Categoria;

EXECUTE ListarFilmePorCategoria 'Ação';
-- AEEE GARACA, QUE ORGULHO POH

CREATE PROCEDURE QuantFilmesPorCategoria @IdCategoria INT AS 
SELECT COUNT(*) AS QuantFilmes FROM Lancamentos
WHERE @IdCategoria = Lancamentos.IdCategoria ;
EXECUTE QuantFilmesPorCategoria 4;

DROP PROCEDURE QuantFilmesPorCategoria; --(FAVOR NÃO   D R O P A R )

SELECT DISTINCT IdLancamento, Titulo FROM Lancamentos;

-- Criar uma view que traga todas as plataformas e que mostre quais os gêneros que passem na plataforma;
	--(Netflix que passa o filme Sing, que é da categoria Animação. Logo, o resultado esperado da view, será da seguinte manteira:
	--Plataforma Gênero/Categoria
	--Netflix Animação)

CREATE VIEW vw_PlataformaLancamento AS
SELECT Plataformas.IdPlataforma, Categorias.Nome FROM PlataformaLancamento
JOIN Plataformas ON PlataformaLancamento.IdPlataforma = Plataformas.IdPlataforma
JOIN Lancamentos ON PlataformaLancamento.IdLancamento = Lancamentos.IdLancamento
JOIN Categorias ON Lancamentos.IdCategoria = Categorias.IdCategoria
WHERE PlataformaLancamento.IdPlataforma = 4;

SELECT * FROM vw_PlataformaLancamento

-- revisar JOIN








