## Conditional Subqueries: NOT IN

### Understanding
- See which `id` from the `items` table is not in the `item_id` column of the `bids` table
- Use a subquery
- Use `NOT IN`

### Task
- Write a SQL query that shows all items that have not had bids put on them. Use the logical operator NOT IN for this exercise, as well as a subquery.

Here is the expected output:

 Not Bid On
------------
 Television
(1 row)

### Implementation
- Test the subquery to show items in the `item_id` column of the `bids` table
- Set up the code to check for `id`s not in a given subset