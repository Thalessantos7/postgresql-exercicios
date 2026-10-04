-- 2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente.
CREATE OR REPLACE PROCEDURE apagar_produto(idp INTEGER) LANGUAGE SQL AS
$$
	DELETE FROM produto WHERE idproduto = idp;
$$;

SELECT * FROM PRODUTO
CALL apagar_produto(9)