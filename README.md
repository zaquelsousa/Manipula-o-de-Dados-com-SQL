# The friking SQL

as for this class we use mysql, and since i'm a cool person I use it mariadb
so the first thing we need to do is to log in so we have the right previleges.

we need to create a database it on her that we will put your tables later

```sql
CREATE DATABSE ComercioTI;

output: Query OK, 1 row affected (0.000 sec)
```

to do thing on this new databse we need to use it, so we do that:

```sql
USE ComercioTI; -- awesome comentary
```

SQL is case sensitive so be awere of that, and all commands and with ; 
we can use -- to write coments.

## creatining a table

so we have a database to throw all the table we need, but how we create them?

with the help of `CREATE TABLE` command, again we are useing the command craete, but now with tghe
table to specifie that we want a table.
if i can make a observation is that sql is like english, so just think in english what u want to do and has a good chance to be that way.

```sql
CREATE TABLE nome_da_tabela(
    codigo int,
    nome char(20)
);

output: Query OK, 0 rows affected (0.009 sec)
```

okay but maybe you need to a way of identifie each item of this table as unique we can do that
by sayingh that a column is the data that do that, and SQL provide us a way of doing so with
`PRIMARY KEY`

```sql
CREATE TABLE Forcedores(
	Codigo char(3) PRIMARY KEY,
	Nome char(20)
);
```

well we are using a relational database so we want to do relational thing u know what i mean hun.
we can do to so called `foreign key` like that:

```sql
create table Produtos(
	CodigoProduto char(3) primary key,
	NomeProduto char(30),
	PrecoProduto numeric(6,2),
	Categoria char(3),
	Fornecedor char(3),
	--it is best to put fk as lest parameter
	CONSTRAINT FK_Protudos_Categorias FOREIGN KEY (Categoria) REFERENCES Categorias(Codigo)
);
```

the key here is FOREIGN KEY (Categoria) REFERENCES Categorias(Codigo) if that we area saying
the we have a FK categoria that meke a refecence to the table categorias and the column codigo, 
so this table must exist. and we are using CONSTRAINT to give the fk a name FK_Protudos_Categorias
in this way if later we need to manipulate we can easly do that.


there are a number of datatypes in sql:
- int
- smallint
- real
- double precision 
- char(N)
- varchar(N)
- date
- time 
- timestamp
- interval

and of course each SGBD can have it's own types

## Basic commands
okay with the table create it's time to manipulate some data ieeeeee

