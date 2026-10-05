-- 1. Crie uma tabela chamada PEDIDOS_APAGADOS.
CREATE TABLE pedidos_apagados (
	idpedido INTEGER NOT NULL,
	idcliente INTEGER NOT NULL,
	idtransportadora INTEGER,
	idvendedor INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	valor FLOAT NOT NULL,
	data_apagado DATE NOT NULL
)