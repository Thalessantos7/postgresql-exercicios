-- 2. Defina somente permissões para o novo papel poder selecionar e incluir novos pedidos (tabelas pedido e pedido_produto).
-- O restante do acesso deve estar bloqueado.
GRANT SELECT, INSERT ON pedido, pedido_produto TO atendente WITH GRANT OPTION;
GRANT ALL ON pedido_id_seq TO atendente WITH GRANT OPTION;