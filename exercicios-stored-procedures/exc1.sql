-- 1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual
-- de aumento, e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro.
CREATE OR REPLACE PROCEDURE reajusta_produto(idp INTEGER, percentual FLOAT) LANGUAGE SQL AS
$$
	UPDATE produto SET valor = valor + ((valor * percentual) / 100) WHERE idproduto = idp;
$$;

SELECT * FROM produto
CALL reajusta_produto(1, 10)