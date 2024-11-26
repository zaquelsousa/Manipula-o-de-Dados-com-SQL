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