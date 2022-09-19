select * from tabela_de_produtos;

select nome_do_produto, preco_de_lista,
case
	when preco_de_lista > 10 then 'caro'
    else 'barato'
end as 'status'
from tabela_de_produtos
order by status;


select embalagem,
case
	when preco_de_lista > 10 then 'caro'
    else 'barato'
end as status, avg(preco_de_lista) as precoMedio
from tabela_de_produtos
group by embalagem,
case
	when preco_de_lista > 10 then 'caro'
    else 'barato'
end
order by status;


select nome,
case
	when year(data_de_nascimento) < 1990 then 'velho'
    when year(data_de_nascimento) > 1995 then 'criança'
    else 'joven'
end as classificacao
from tabela_de_clientes;