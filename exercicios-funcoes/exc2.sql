-- 2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor.
create function get_maior_pedido()
returns integer language plpgsql
as
$$
begin
	return (select idpedido from pedido where valor = (select max(valor) from pedido));
end;
$$;

select get_maior_pedido();