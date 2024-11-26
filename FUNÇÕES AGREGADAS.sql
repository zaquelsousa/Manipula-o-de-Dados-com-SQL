-- Funcoes Agragadas ou func de agragação, AVG, COUNT, MAX, MIN, SUM

-- AVG(COLUNA) calcula a media de todos os valores para aquela colunas
-- valores nulos nao sao considerados, porra

Select	AVG(preco) AS 'preco medio' from produtos;

-- porra menor da hora que tem esse ALAIS ai "AS" que da pra mudar o nome que nem ta ai em cima o carai

-- Count: da pra contar o numero de linhas na tabela, e tmb da pra contar o numeor de valores nao nulos para a tabela entao se tiver 5 itens e um com valor nulo ele puxa 4
select count(*) as 'numero de produtos cadastrados' from produtos; -- puxa o numero de linhas na tabela
Select count(preco) from produtos;

-- da pra fazer filtro usando esse funcoes por 
select count(*) from produtos where categoria = '3';

select max(preco) from produtos; -- puxa o mairo valor

select min(preco) from produtos; -- precisa explicar o que essa porra faz?????

select sum(preco) from produtos; -- soma todos os valores
select sum(preco) from produtos where Fornecedor = '003';

select * from produtos;