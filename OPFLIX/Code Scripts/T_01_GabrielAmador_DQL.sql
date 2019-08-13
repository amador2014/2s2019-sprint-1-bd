USE T_Opflix;
/*
- Incluir uma imagem para cada usu�rio cadastrado;

- Criar um procedimento para listar os filmes dado uma categoria em String do usu�rio;
	(Listar os filmes da categoria A��o)
- Criar um procedimento para listar a quantidades de filmes, dada uma categoria por Id;
	(Listar os filmes da categoria 1 ou o id correspondente da sua tabela).
- Criar uma view que traga todas as plataformas e que mostre quais os g�neros que passem na plataforma;
	(Netflix que passa o filme Sing, que � da categoria Anima��o. Logo, o resultado esperado da view, ser� da seguinte manteira:
	Plataforma G�nero/Categoria
	Netflix Anima��o)

*/

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

------------------------------------------------

