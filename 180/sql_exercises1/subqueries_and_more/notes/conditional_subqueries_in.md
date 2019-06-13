## Conditionsl Subqueries: IN

### Understanding
- Want the item name from `items`
- The subquery should be written in `WHERE` clause

### Task
- Write a SQL query that shows all items that have had bids put on them. Use the logical operator IN for this exercise, as well as a subquery.

Here is the expected output:

```
 Bid on Items
---------------
 Video Game
 Outdoor Grill
 Painting
 Tent
 Vase
(5 rows)
```

### Implementation
- `SELECT` the name of the item
  + `WHERE` the item's id is in the list of `item_id`s from the `bids` table

```sql
SELECT name FROM items
WHERE id IN (SELECT item_id FROM bids);
```