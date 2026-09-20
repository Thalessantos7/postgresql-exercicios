-- 1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido.
create function get_valor_pedido(idpdd integer)
returns varchar(20) language plpgsql
as
$$
begin
	return (select formata_moeda(pdd.valor) from pedido pdd where pdd.idpedido = idpdd);
end;
$$;

select get_valor_pedido(idpedido) from pedido;