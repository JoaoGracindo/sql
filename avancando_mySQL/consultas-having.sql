select estado, sum(limite_de_credito) from tabela_de_clientes
group by estado;

select estado, sum(limite_de_credito) from tabela_de_clientes
group by estado
having sum(limite_de_credito) > 900000;

select embalagem, max(preco_de_lista), min(preco_de_lista) from tabela_de_produtos
group by embalagem;

select embalagem, max(preco_de_lista), min(preco_de_lista) from tabela_de_produtos
group by embalagem
having sum(preco_de_lista) <= 80;

select embalagem, max(preco_de_lista), min(preco_de_lista) from tabela_de_produtos
group by embalagem
having sum(preco_de_lista) <= 80
and max(preco_de_lista) >= 5;

select cpf, count(*) from notas_fiscais
where year(data_venda) = 2016
group by cpf
having count(*) > 2000;