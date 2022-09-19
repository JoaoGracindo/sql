USE SUCOS;

UPDATE tabela_de_vendedores set PERCENTUAL_COMISSAO = 0.11
WHERE MATRICULA = '00236';

UPDATE tabela_de_vendedores set NOME = 'Jose Geraldo da Fonseca'
WHERE MATRICULA = '00233';

delete from tabela_de_vendedores
where MATRICULA = '00233';