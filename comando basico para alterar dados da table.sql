-- Alteracao da estrutura do banco de dados
-- ALTER TABLE

ALTER TABLE Produtos
ADD CONSTRAINT FK_Produto_Fornecedor FOREIGN KEY(Fornecedor) REFERENCES forcedores(Codigo);

-- alterando nome de uma coluna
ALTER TABLE Produtos RENAME COLUMN PrecoProduto TO Preco;