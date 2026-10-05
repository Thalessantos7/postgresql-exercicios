-- 1. O objetivo deste exercício é alterar os tipos de dados dos atributos de todas
-- as tabelas, considerando os domínios criados anteriormente. Caso julgue necessário, faça a criação de novos domínios.
ALTER TABLE bairro_auditoria ALTER COLUMN data_criacao TYPE data_hora;

DROP VIEW cliente_profissao;
DROP VIEW dados_pedido;
DROP VIEW produto_fornecedor;
DROP VIEW municipio_uf;
DROP VIEW transportadora_uf;
DROP VIEW produto_pedido;

ALTER TABLE cliente ALTER COLUMN nome TYPE nome_longo;
ALTER TABLE cliente ALTER COLUMN cpf TYPE documento;
ALTER TABLE cliente ALTER COLUMN rg TYPE documento;
ALTER TABLE cliente ALTER COLUMN data_nascimento TYPE data;
ALTER TABLE cliente ALTER COLUMN genero TYPE tipo;
ALTER TABLE cliente ALTER COLUMN logradouro TYPE nome_longo;
ALTER TABLE cliente ALTER COLUMN numero TYPE nome_curto;
ALTER TABLE cliente ALTER COLUMN idprofissao TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idnacionalidade TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idbairro TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idmunicipio TYPE idmedio;
ALTER TABLE cliente ALTER COLUMN idcomplemento TYPE idmedio;

ALTER TABLE complemento ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE fornecedor ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE municipio ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE municipio ALTER COLUMN iduf TYPE idmedio;

ALTER TABLE nacionalidade ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE pedido ALTER COLUMN idpedido TYPE BIGINT;
ALTER TABLE pedido ALTER COLUMN idcliente TYPE idmedio;
ALTER TABLE pedido ALTER COLUMN idtransportadora TYPE idmedio;
ALTER TABLE pedido ALTER COLUMN idvendedor TYPE idmedio;
ALTER TABLE pedido ALTER COLUMN data_pedido TYPE data;
ALTER TABLE pedido ALTER COLUMN valor TYPE moeda;

ALTER TABLE pedido_produto ALTER COLUMN idpedido TYPE idlongo;
ALTER TABLE pedido_produto ALTER COLUMN idproduto TYPE idmedio;
ALTER TABLE pedido_produto ALTER COLUMN quantidade TYPE quantidade;
ALTER TABLE pedido_produto ALTER COLUMN valor_unitario TYPE moeda;

ALTER TABLE pedidos_apagados ALTER COLUMN idpedido TYPE idlongo;
ALTER TABLE pedidos_apagados ALTER COLUMN idcliente TYPE idmedio;
ALTER TABLE pedidos_apagados ALTER COLUMN idtransportadora TYPE idmedio;
ALTER TABLE pedidos_apagados ALTER COLUMN idvendedor TYPE idmedio;
ALTER TABLE pedidos_apagados ALTER COLUMN data_pedido TYPE data;
ALTER TABLE pedidos_apagados ALTER COLUMN valor TYPE moeda;

ALTER TABLE produto ALTER COLUMN idfornecedor TYPE idmedio;
ALTER TABLE produto ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE produto ALTER COLUMN valor TYPE moeda;

ALTER TABLE profissao ALTER COLUMN nome TYPE nome_medio;

ALTER TABLE transportadora ALTER COLUMN idmunicipio TYPE idmedio;
ALTER TABLE transportadora ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE transportadora ALTER COLUMN logradouro TYPE nome_longo;
ALTER TABLE transportadora ALTER COLUMN numero TYPE nome_curto;

ALTER TABLE uf ALTER COLUMN nome TYPE nome_medio;
ALTER TABLE uf ALTER COLUMN sigla TYPE sigla;

ALTER TABLE vendedor ALTER COLUMN nome TYPE nome_medio;

-- Recriar as views