-- 2. Faça uma trigger que quando um pedido for apagado, todos os seus dados devem ser copiados para a tabela PEDIDOS_APAGADOS.
CREATE OR REPLACE FUNCTION pedido_log() RETURNS TRIGGER LANGUAGE plpgsql AS
$$
BEGIN
	INSERT INTO pedidos_apagados (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor, data_apagado)
	VALUES (OLD.idpedido, OLD.idcliente, OLD.idtransportadora, OLD.idvendedor, OLD.data_pedido, OLD.valor, CURRENT_TIMESTAMP);
	RETURN OLD;
END;
$$;

CREATE OR REPLACE TRIGGER log_pedido_trigger BEFORE DELETE ON pedido FOR EACH ROW EXECUTE PROCEDURE pedido_log();

SELECT * FROM pedido

SELECT idpedido FROM pedido WHERE idpedido NOT IN (SELECT idpedido FROM pedido_produto)

DELETE FROM pedido WHERE idpedido = 16
DELETE FROM pedido WHERE idpedido = 17
DELETE FROM pedido WHERE idpedido = 18

SELECT * FROM pedidos_apagados

ALTER TABLE pedidos_apagados ALTER COLUMN data_apagado TYPE TIMESTAMP