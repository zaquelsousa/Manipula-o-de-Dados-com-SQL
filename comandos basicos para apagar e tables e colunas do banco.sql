-- Apagar um table

Create table temporaria(
	codigo char(3),
    Nome char(20)
);

-- apaga a table do banco
DROP TABLE temporaria;

insert into temporaria values('1', 'nome 1');
insert into temporaria values('2', 'nome 2');
insert into temporaria values('3', 'nome 3');

select * from temporaria;

-- limpando os dados de uma tabela, mantendo a tabela no bd
truncate table temporaria;

-- altendo nome da table
rename table temporaria to tebela_a_ser_apagada;


drop table tebela_a_ser_apagada;

alter table categorias add penis numeric not null;

-- apaga uma coluna porra
ALTER TABLE categorias
DROP COLUMN penis;