--Joins
Liga��e entre as tabelas do banco de dados
� bom e ruim

Exise a op��o de fazer os joins atraves do where
WHERE V.VENDASCOD = I.VENDASCOD

For�ar a utiliza��o de um index no JOIN tem como

INNER JOIN � a mesa coisa que somente JOIN
j� LEFT JOIN tem que ser LEFT JOIN mesmo

	--OBSERVAR QTDE DE LINHAS
		SELECT * FROM VENDAS99;
		SELECT * FROM VENDAS99ITEM;
		SELECT * FROM PRODUTOS99;
	
	--APELIDANDO TABELAS
		SELECT  V.*,
				I.*
		FROM VENDAS99 V,
			 VENDAS99ITEM I;
	
	--EQUIVALENCIA E PADRONIZACAO
		SELECT 	V.*,
				I.*
		FROM VENDAS99 V,
			 VENDAS99ITEM I
		WHERE V.ID_VENDAS99 = I.ID_VENDAS99;
		
		SELECT 	V.*,
				I.*
		FROM VENDAS99 V
			JOIN VENDAS99ITEM I ON(V.ID_VENDAS99 = I.ID_VENDAS99);
		
	--OBS ONDE ESTA A VENDA 62 ??????
		SELECT 	V.*,
				I.*
		FROM VENDAS99 V
			JOIN VENDAS99ITEM I ON(V.ID_VENDAS99 = I.ID_VENDAS99);
			
		62 n�o tem item e eu quero somente as vendas que posuem itens
		ai � feito o que est� abaixo
	
	--TRAZER A DESCRICAO DOS PRODUTOS
		--VAI SUMIR DINOVO A VENDA 62
		SELECT V.*,
			I.*,
			P.DESCRICAO
		FROM VENDAS99 V
			LEFT JOIN VENDAS99ITEM I ON(V.ID_VENDAS99 = I.ID_VENDAS99)
			JOIN      PRODUTOS99   P ON(I.ID_PRODUTOS99 = P.ID_PRODUTOS99);
			
		LEFT = lado esquerdo sempre vai ter, eu garanto que a tabela VENDAS99 tem, j� a VENDAS99ITEM eu n�o tenho certeza
		INNER = eu garanto que as duas tabelas tem a liga��o
			se for null com null o valor n�o � exibido null com null sempre � null
			
			
		
		--DUVIDAS DE COMANDOS
			msdn sql server getdate
		
	--TRAZER A DESCRICAO DOS PRODUTOS
		--  + VENDA 63
		SELECT V.*,
			I.*,
			P.DESCRICAO
		FROM VENDAS99 V
			LEFT JOIN VENDAS99ITEM I ON(V.ID_VENDAS99 = I.ID_VENDAS99)
			LEFT JOIN      PRODUTOS99   P ON(I.ID_PRODUTOS99 = P.ID_PRODUTOS99);
	
	--FORMATOS DE DATAS PADRAO
		SELECT 
			GETDATE(),
			CONVERT(VARCHAR, GETDATE(), 0),
			CONVERT(VARCHAR, GETDATE(), 1),
			CONVERT(VARCHAR, GETDATE(), 2),
			CONVERT(VARCHAR, GETDATE(), 3),
			CONVERT(VARCHAR, GETDATE(), 4),
			CONVERT(VARCHAR, GETDATE(), 5),
			CONVERT(VARCHAR, GETDATE(), 6),
			CONVERT(VARCHAR, GETDATE(), 7),
			CONVERT(VARCHAR, GETDATE(), 8),
			CONVERT(VARCHAR, GETDATE(), 9),
			CONVERT(VARCHAR, GETDATE(), 11),
			CONVERT(VARCHAR, GETDATE(), 103);
	
	--CORRETO
		SELECT FORMAT(GETDATE(), 'dd/MM/yyyy HH:mm:ss');
	
	--ERRADO
		SELECT FORMAT(GETDATE(), 'DD/MM/YYYY HH:MM:SS');
		Case-sensitive
	
	--APELIDANDO COLUNAS E TRAZENDO O NECESSARIO APENAS
		SELECT V.NUMERO, 
			V.DT_HR,
			FORMAT(V.DT_HR, 'dd/MM/yyyy') AS DATA,
			FORMAT(V.DT_HR, 'HH:mm:ss') AS HORA
		FROM VENDAS99 V
	
		� possivel fazer asssim AS "Eu posso colocar espa�o agora"
	
	--PADRAO NA INSTALACAO
		SELECT GETDATE()
		SET DATEFORMAT dmy;  
		
		sp_helplanguage
		sp_helplanguage Brazilian
		
		sp_help VENDAS99
		equivalente ao ALT + F1 porem ele � da ferramenta e n�o do banco
		
	--VIEWS
		Evito erros no meu SQL, n�o tem altera��es em joins, fun��es etc
		mauten��o tambem
		o que deve ter muita aten��o s�o where, o correto � voce ter um view somente com a jun��o dos dados
		
		