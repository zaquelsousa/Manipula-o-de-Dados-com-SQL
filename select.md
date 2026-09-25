# how we can select data?

we can use the `SELECT` command to grab some data on the db
like we alredy soo

```sql
SELECT * FROM mytable;

output:
+-----+---------------+
| age | name          |
+-----+---------------+
| 12  | koko          |
| 20  | Megurime Luka |
| 614 | Bayonetta     |
+-----+---------------+
```

what does is select all the data on the databse, that what the * mean, it mean all
the `FROM` is well form where kkkkk it grab so we provide the name of the table that we want

but lets say that we only want the name, we dont need all the fields we can do that:

```sql
SELECT name FROM mytable;

output:
+---------------+
| name          |
+---------------+
| koko          |
| Megurime Luka |
| Bayonetta     |
+---------------+
```

so in this way we get only the column name, so we can specifie the fields that we want so this way we avoid
geting data the we dont need pretty cool right?

## lets give order on this shit
maybe we want to organize the output of the data, so by default the `SELECT` spit on the order of insertion
but we can use the `ORDER BY` to sort on ascending or descending order.

```sql
SELECT * FROM mytable ORDER BY name;
```

so by default the `ORDER BY` sort in ascending order so in the query above since the name filed is char is sort
in alfabetic order a to z. if was a number field would be minor to major. maybe we want in descending order
we can do that with use of `DESC` command

```sql
SELECT * FROM mytable ORDER BY mytable DESC;
```

we can use make use of `ASC` you gested to make output in acending order

```sql
SELECT * FROM mytable ORDER BY mytable ASC;
```

## the fucking WHERE
with the help of where we can make this even more better, as you remember the `WHERE` make rule for the query
so it make more safe and presice. so lets pretend that are are messing with a custumer table has the columns
id, name, email, uf

so lets say that we want only custumer of uf = mg we can do that:

```sql
select * custumers WHERE uf = 'MG';
```

that good by maybe we want to give some order on the result and thus we can do like that

```sql
select * custumers WHERE uf = 'MG' ORDER BY name;
```

so the order by is the last thing that we want to do because it need to know the result of the query to be able to tell sql how to sort.


## comparation operators
we can improve even more the query by the use of comparison operators, we have

| Operator | description                   |
| -------- | ----------------------------- |
| =        | check if two values are equal |
| !=       | not equal                     |
| >=       | greater or equal then         |
| >        | greater then                  |
| <=       | less or equal then            |
| <        | less then                     |

the result will be a true or false state we can use on the `WHERE` part of the query

```sql
SELECT * FROM products WHERE price >= 1000;
```

with that are a asking sql to give us all the columns from products wher price is greater or equal then 1000. cool

## Logical Operators
okay but perhaps we want to be more precise with the query, we can use logic operators, this way the can compare if two logic expressions.
so sql give us:


| Operator | description                                                  |
| -------- | ------------------------------------------------------------ |
| ALL      | True if all the subquery values meet the condition           |
| AND      | True if all the conditions separated by AND is True          |
| ANY      | True if any of the subquery values meet the condition        |
| BETWEEN  | True if the operand is within the range of comparations      |
| EXISTS   | True if the subquery returns one or more records             |
| IN       | True if the operant is equal to one of  alist of expressions |
| LIKE     | True if ithe operant matches a pattern                       |
| NOT      | Display a record if the conditions(s) is not true            |
| OR       | True if any of the conditions separated by OR is True        |
| SOME     | True if any of the subquery values meet the condition        |

```sql
SELECT ProductName FROM Products
WHERE ProductID = ALL(SELECT ProductID FROM OrderDetails WHERE Quantity = 10);
```

well now something interesting we can do subquery so we have our main query
`SELECT ProductName FROM Products WHERE ProductID = ALL()` and a subquery 
`SELECT ProductID FROM OrderDetails WHERE Quantity = 10`

one example with AND operator
```sql
SELECT * FROM Custumers WHERE City = "London" AND Country = "UK";
```

