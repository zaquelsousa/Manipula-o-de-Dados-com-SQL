-- Operadores de comparacao: =, <> diferente kkkk, >, <, >=, <=

select NomeProduto, Preco from produtos where categoria = '3';

select NomeProduto, Preco from produtos where preco = '1000';

select NomeProduto, Preco from produtos where preco > '1000'
order by preco;

select NomeProduto, Preco from produtos where Categoria <> '3'
order by preco;

select NomeProduto, Preco from produtos where preco <= '1000'
order by preco desc;