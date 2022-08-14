USE T_SSolve;

SELECT * FROM Clientes ORDER BY IdCliente ASC;
SELECT * FROM Comodos ORDER BY IdComodo ASC;
SELECT * FROM Funcionarios ORDER BY IdFuncionario ASC;
SELECT * FROM Servicos ORDER BY IdServico ASC;
SELECT * FROM ServicosFuncionarios ORDER BY IdServico ASC;

SELECT Clientes.NomeFantasia, Clientes.RazaoSocial, Clientes.CNPJ, Clientes.Endereco, Comodos.Nome, Funcionarios.Nome, Funcionarios.Salario, Servicos.Descricao, Servicos.Preco, Servicos.DataInicio, Servicos.DataTermino
FROM Servicos
JOIN Clientes
ON Servicos.IdCliente = Clientes.IdCliente
JOIN Comodos
ON Servicos.IdComodo = Comodos.IdComodo
JOIN ServicosFuncionarios
ON Servicos.IdServico = ServicosFuncionarios.IdServico
JOIN Funcionarios
ON ServicosFuncionarios.IdFuncionario = Funcionarios.IdFuncionario




