# INSERT, UPDATE and DELETE data

we already see the `CREATE` command but how we add data on the table? we can do that with the help of `INSERT`

like that:
```sql
INSERT INTO mytable VALUES(12, "koko");
```

that one way but the fields of the table are omited and thus can be hard to know if the values ar going to the correct
coloumn, or even this the schema changes later we are cooked, so we can do this way:

```sql
INSERT INTO mytable(age, name) VALUES(20, "Megurime Luka");
```

note that this way we are explicity saying what are the fields, that way is more "safe".

okay but how do we see all this data that we are putting on db? we can use the command `SELECT`

```sql
SELECT * FROM mytable;

output:
+-----+---------------+
| age | name          |
+-----+---------------+
| 12  | koko          |
| 20  | Megurime Luka |
+-----+---------------+
```
that will show us all the data present on mytable, isnt that cool?

okay lets say that we try to inset bayonneta on the db, but you notice that we misspel her name, lets fix that

we can do:
```sql
UPDATE mytable SET name = "Bayonetta";
```
okay lets see if now is correct:
```sql
SELECT * FROM mytable;

output:
+-----+---------------+
| age | name          |
+-----+---------------+
| 12  | Bayonetta     |
| 20  | Bayonetta     |
| 614 | Bayonetta     |
+-----+---------------+
```

oh fuck what have we done? we have forgot a very important command the `WHERE`
the `WHERE` command create a rule for the query, so we always wnat to use a rule in order to prevent this kind of
disaster so the correct way would be:

```sql
UPDATE mytable SET name = "Bayonetta" WHERE id = 3;
```

now only the column that matchs for the id = 3 will be afected, and to make this even more safe we could use a "transactions"
but we can see that later.

well pereps you want to delete something from the database we can do that with the help of the `DELETE` command
and delete is as danguos as update data so we must use a `where` rule like that:

```sql
DELETE FROM mytable WHERE id = 4;
```
so this way we can delete only the columnn that matches the id 4.

