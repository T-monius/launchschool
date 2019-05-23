## Conditional Subqueries: IN

### Understanding
- `items` table holds the names of the items
- `bids` table holds the state of a bid

### Task
- Write a SQL query that shows all items that have had bids put on them. Use the logical operator IN for this exercise, as well as a subquery.

Here is the expected output:

 Bid on Items  
---------------
 Video Game
 Outdoor Grill
 Painting
 Tent
 Vase
(5 rows)

### Implementation
- Select names from the `items` table whose `id` is in a query of the `bids` table where the a query of the `item_id`
