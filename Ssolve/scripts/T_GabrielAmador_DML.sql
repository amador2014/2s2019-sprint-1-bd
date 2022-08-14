USE T_SSolve;

INSERT INTO Clientes (NomeFantasia, CNPJ, RazaoSocial, Endereco)
	VALUES  ('Drop House', '68968633000121', 'Empresa de Estoque de Objetos LTDA', 'Rua Tenente-Coronel Napion'),
			('Deep Cash', '79313827000105', 'Banco Deep S.A', 'Rua Guanabara'),
			('Hiden Input', '19334213000188', 'Entrada e Financiamento de Negócios LTDA.', 'Quadra 106 Sul Alameda 18')

INSERT INTO Comodos (Nome) VALUES ('Cozinha'),('Área de Trabalho'),('Banheiro'),('Sala de Estar'),('Quarto'),('Garagem');
INSERT INTO Funcionarios (Nome, Salario) VALUES ('Joana','1200'),('Vinicius','2000'),('Ana','1300');
INSERT INTO Servicos (Descricao,Preco,IdComodo,IdCliente,DataInicio,DataTermino)
		VALUES ('Manutenção Chuveiro', '50.00', 1, 3, GETDATE(), '2007-04-30T18:10:02'),
		('Troca de Luz', '20.00', 2, 2, '2018-04-28T12:00:02', '2018-04-28T14:32:05'),
		('Manutenção Máquina de Lavar', '120.00', 2, 2, '2018-05-30T11:00:02', '2018-04-30T11:50:02'),
		('Limpeza  de Equipameto Industrial', '45.00', 6, 1, '2018-04-23T12:00:02', '2018-04-23T17:10:02');
INSERT INTO ServicosFuncionarios (IdServico, IdFuncionario) VALUES (1,1),(2,1),(2,2),(3,2),(4,3);

