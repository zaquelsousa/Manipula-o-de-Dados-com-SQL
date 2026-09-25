-- comando select e usado para selecionar kkkkk consultar ou trazer dados da table

SELECT * FROM forcedores;

SELECT Codigo, Nome, UF FROM forcedores
where UF = 'MG' OR UF = 'SP'
order by UF;

-- operadores logicos AND, OR, BETWEEN, IN, NOT, IS NULL, IN NOT NULL

select NomeProduto, preco from produtos
where preco >= 1000 and preco <= 2000;

select NomeProduto, preco from produtos
where preco >= 1000 or preco < 100;

select NomeProduto, preco from produtos
where preco between 1000 and 1500;

select Nome from categorias
where nome in ('Acessorios', 'Suprimentos');

select Nome from categorias
where nome not in ('Acessorios', 'Suprimentos');

-- Operadores de comparacao: =, <> diferente kkkk, >, <, >=, <=

select NomeProduto, Preco from produtos where categoria = '3';

select NomeProduto, Preco from produtos where preco = '1000';

select NomeProduto, Preco from produtos where preco > '1000'
order by preco;

select NomeProduto, Preco from produtos where Categoria <> '3'
order by preco;

select NomeProduto, Preco from produtos where preco <= '1000'
order by preco desc;
