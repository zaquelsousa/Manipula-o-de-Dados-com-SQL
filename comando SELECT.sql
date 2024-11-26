-- comando select e usado para selecionar kkkkk consultar ou trazer dados da table

SELECT Codigo, Nome, UF FROM forcedores
where UF = 'MG' OR UF = 'SP'
order by UF;

-- da pra usar uma pa de coisa aqui pra deixar essa consulta do jeito que se precisa