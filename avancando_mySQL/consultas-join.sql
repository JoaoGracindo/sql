select * from tabela_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores a 
inner join notas_fiscais b
on a.matricula = b.matricula;

select nome,count(*) from tabela_de_vendedores a 
inner join notas_fiscais b
on a.matricula = b.matricula
group by a.matricula;

select year(data_venda), sum(quantidade * preco)
from notas_fiscais nf
inner join itens_notas_fiscais inf
on nf.numero = inf.numero
group by year(data_venda);

