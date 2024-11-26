-- juncao de tabelas

select Nome, NomeProduto
from categorias, produtos; -- retorna tudo errado devido ao produto carteziano a irmao pesquisa porra 


select categorias.Nome as Categoria , produtos.NomeProduto as Produto -- porra ainda usa o alias pra renomaera as colunas brabo
from categorias inner join produtos on produtos.Categoria = categorias.Codigo;
-- menor olha como esse selct ai ta bem mais leigvel porra tem que fazer assim por 
-- po mas pelo que eu to entendendo essa porra de join faz tipo uma verificação se os dois conjunto tem uma interceção

-- LEFT JOIN porra Puxa tudo da esquerda + os dados combinados.
select categorias.Nome as Categoria , produtos.NomeProduto as Produto 
from categorias left join produtos on produtos.Categoria = categorias.Codigo;

-- Right JOIN Puxa tudo da direita + os dados combinados.
select produtos.NomeProduto as Produto , categorias.Nome as Nome 
from categorias right join produtos on produtos.Categoria = categorias.Codigo;


-- union
select nome as 'Categoria e produtos' from categorias
union all -- sa porra vai juntar tudo numa lista, enqundo o join cria uma coluna para cada esse arrombando lista geral na msm porra
select NomeProduto from produtos;

-- distnct pelo que eu intendi ele vai remover a as duplicidades
select distinct nome from categorias join produtos on produtos.Categoria = categorias.Codigo;