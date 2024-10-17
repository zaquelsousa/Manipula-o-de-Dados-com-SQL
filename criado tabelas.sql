-- Criando as tabelas do BDs

CREATE TABLE Forcedores(
--	se nao for fazer operaçoes aritimeticas, entao nao tem sentido usar numero,ai pra otimizar usa char msm
	Codigo char(3) PRIMARY KEY,
	Nome char(20)
);

CREATE TABLE Categorias(
	Codigo char(3) primary key,
	Nome char(15)
);

create table Produtos(
	CodigoProduto char(3) primary key,
	NomeProduto char(30),
	PrecoProduto numeric(6,2),
	Categoria char(3),
	Fornecedor char(3),
	--criando FK
	CONSTRAINT FK_Protudos_Categorias FOREIGN KEY (Categoria) REFERENCES Categorias(Codigo)
);