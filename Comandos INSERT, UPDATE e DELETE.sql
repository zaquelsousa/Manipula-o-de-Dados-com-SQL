-- inserindo dados
insert into forcedores values('001', 'Big Fer'); -- nessa forma aqui os dados DEVEM estar na msm sequencia que esta salva no banco
insert into forcedores (Nome, Codigo) values('3F', '097'); -- ja desse jeito aqui, nos passamos entre parenteses o atribulto que queremos salvar/alterar e seguida seu valor
insert into forcedores (Codigo, Nome) values('003','Papaiz'); 
insert into forcedores (Codigo) values('043'); -- so da certo pq nao é chave primaria e tmb o atribulto Nome aceita valor nulo

-- alterando dados da tabela
Update forcedores set nome = 'Italy line' where Codigo = '043'; -- se nao passar uma condição todos os atributos da tabela toda vvai ser alterado kkkkk

select * from forcedores;

-- inserndo na table categoira
insert into categorias(Codigo, Nome) values ('1', 'Computadores');
insert into categorias(Codigo, Nome) values ('2', 'Impresoras');
insert into categorias values ('3', 'Acessorios');
insert into categorias values ('4', 'Suprimentos');

select * from categorias;

-- inserindo na tabela produtos
insert into produtos values
	('1', 'Computador AMD', 3500., '1', '001'),
    ('2', 'Computador inter', 1000., '1', '001'),
    ('3', 'Impresora apson', 1500., '2', '097');
    
insert into produtos(NomeProduto, CodigoProduto, Preco, Categoria, Fornecedor) values
	('mouse logitec', '4', 80., '3', '003'),
    ('Mesa digitalizada wacom 4100',180., '5', '3', '043');
    
select * from produtos;
-- excluindo dados de uma tabela 
delete from produtos where Categoria = '2'; -- menor tem que pssar uma condição pra deletar ne nao fudeu vai pagar tudo