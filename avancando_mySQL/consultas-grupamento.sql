select * from tabela_de_clientes;

select estado, limite_de_credito from tabela_de_clientes;

select estado, sum(limite_de_credito) as limiteTotal from tabela_de_clientes group by estado;

select embalagem, preco_de_lista from tabela_de_produtos;

select embalagem, max(preco_de_lista) as maiorPreco from tabela_de_produtos group by embalagem;

select embalagem, count(*) as QuantidadeProdutosDiferente from tabela_de_produtos group by embalagem;

select bairro, sum(limite_de_credito) from tabela_de_clientes group by bairro;

select bairro, sum(limite_de_credito) from tabela_de_clientes
where cidade = 'rio de janeiro'
 group by bairro;
 
 select estado, bairro, sum(limite_de_credito) from tabela_de_clientes group by estado, bairro;
 
  select estado, bairro, sum(limite_de_credito) from tabela_de_clientes 
  where cidade = 'rio de janeiro'
  group by estado, bairro;
  
  select estado, bairro, sum(limite_de_credito) from tabela_de_clientes 
  where cidade = 'rio de janeiro'
  group by estado, bairro
  order by bairro;
  
  select quantidade, count(quantidade) as nVendas from itens_notas_fiscais where codigo_do_produto = '1101035' 
  group by quantidade
  order by quantidade desc;