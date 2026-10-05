-- 4. Realize testes para verificar se as permissões foram aplicadas corretamente.

-- Primeiro teste
SELECT * FROM cliente

-- Segundo teste
SELECT * FROM pedido
SELECT * FROM pedido_produto

-- Terceiro teste
UPDATE pedido_produto SET quantidade = 2 WHERE idpedido = 1 AND idproduto = 1

-- Quarto teste
INSERT INTO pedido (idcliente, idvendedor) VALUES (1, 2)