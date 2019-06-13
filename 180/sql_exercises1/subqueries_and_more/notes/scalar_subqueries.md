## Scalar Subqueries

### Understanding
- A scalar subquery is that returns exactly one column

### Task
- For this exercise, use a scalar subquery to determine the number of bids on each item. The entire query should return a table that has the name of each item along with the number of bids on an item.

Here is the expected output:
```
    name      | count
--------------+-------
Video Game    |     4
Outdoor Grill |     1
Painting      |     8
Tent          |     4
Vase          |     9
Television    |     0
(6 rows)
```

### Implementation
- Build a query to find the count for the value in outer scope
- The outer query returns the name of the column in consideration and the count in the select list
- There is no need to perform a join on the two tables since the table from the outer query is in scope to the inner query.
  + Columns can be compared from the inner and outer query in the inner queries `Where` clause
  + Use the `bids.item_id` and `items.id` to compare even
     * The count will be based on where there are matches
     * The `COUNT` returns one column for all sets of matches
     * The `name` of the outer query simply puts a name to these sets of counts

```sql
SELECT name, (SELECT COUNT(item_id) FROM bids WHERE bids.item_id = items.id) FROM items;
```
