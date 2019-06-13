## Conditional Subqueries: NOT IN

### Understanding
- Read from the `items` table
- Use a subquery
  + Find items that have not been bid on
  + Items identified by their name
    * Described by `Not Bid On`
  + `item_id` should not be in a query from the bids table

### Task
- Write a SQL query that shows all items that have not had bids put on them. Use the logical operator `NOT IN` for this exercise, as well as a subquery.

Here is the expected output:
```
 Not Bid On
------------
 Television
(1 row)
```

### Implementation
```
SELECT name AS "Not Bid On" FROM items
WHERE id NOT IN (SELECT item_id FROM bids);
```
