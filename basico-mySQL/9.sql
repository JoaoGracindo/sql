use sucos;

alter table tccliente add primary key (CPF);

alter table tccliente add column (data_nascimento date);

insert into tccliente (
