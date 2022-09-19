select distinct bairro from tabela_de_clientes;

select distinct bairro from tabela_de_vendedores;


select distinct bairro from tabela_de_clientes
union
select distinct bairro from tabela_de_vendedores;

select distinct bairro from tabela_de_clientes
union all
select distinct bairro from tabela_de_vendedores;

select distinct bairro, nome, 'cliente' as tipo from tabela_de_clientes
union
select distinct bairro, nome, 'vendedor' as tipo from tabela_de_vendedores;

select distinct bairro, nome, 'cliente' as tipo from tabela_de_clientes
union
select distinct bairro, nome, 'vendedor' as tipo from tabela_de_vendedores;


select tabela_de_vendedores.bairro,
tabela_de_vendedores.nome,
de_ferias,
tabela_de_clientes.bairro,
tabela_de_clientes.nome
 from tabela_de_vendedores
left join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro
union
select tabela_de_vendedores.bairro,
tabela_de_vendedores.nome,
de_ferias,
tabela_de_clientes.bairro,
tabela_de_clientes.nome
 from tabela_de_vendedores
right join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro;