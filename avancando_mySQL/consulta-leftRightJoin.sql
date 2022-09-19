select count(*) from tabela_de_clientes;

select cpf, count(*)
from notas_fiscais
group by cpf;

select tc.cpf, tc.nome, nf.numero
from tabela_de_clientes tc
left join notas_fiscais nf
on tc.cpf = nf.cpf
where nf.numero is null
group by cpf;

select distinct a.cpf, a.nome, b.cpf
from tabela_de_clientes a
left join notas_fiscais b
on a.cpf = b.cpf
where b.cpf is null and year(data_venda) = 2015;

