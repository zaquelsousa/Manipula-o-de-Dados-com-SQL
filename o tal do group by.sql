-- agrupamento de dados em uma consulta

select UF, count(*) -- porra menor mete o select dizendo oq vc quer fazer no caso contar todos ai bota um rotulo pra buscar UF no csa
from forcedores -- ja fez o select agr de onde po
group by UF -- ai usa o group by para agrupar esse resultado tlgd
order by UF; -- po ai ordena em ordem alfabetica ne po, o orderby geralmente e a ultima coisa a se fazer pdc

select Categoria, avg(preco)
from produtos
group by Categoria;