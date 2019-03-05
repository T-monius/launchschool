## Insert Data
For this exercise, we'll add some data to our birds table. Add five records to this database so that our data looks like:

 id |   name   | age | species 
----+----------+-----+---------
  1 | Charlie  |   3 | Finch
  2 | Allie    |   5 | Owl
  3 | Jennifer |   3 | Magpie
  4 | Jamie    |   4 | Owl
  5 | Roy      |   8 | Crow
(5 rows)

### Further Exploration
There is a form of INSERT INTO that doesn't require the column names. How does that form of INSERT INTO work, and when would you use it?

> From the PostgreSQL documentatation for version 9.5
>> __Description__ ...  If no list of column names is given at all, the default is all the columns of the table in their declared order; or the first N column names, if there are only N columns supplied by the VALUES clause or query.

The attempted insertion of our values without a column list matches the order in which they appear in the schema of the table except for the `id` column which we omit. Therefore, our insertion would throw an error because the first value in our values list is a `String` and not a serialized number. In order for our insertion to work without the column names, we'd have to account for the `id` column with a default:
```psql
  INSERT INTO birds
  VALUES (DEFAULT, 'Charlie', 3, 'Finch');
```