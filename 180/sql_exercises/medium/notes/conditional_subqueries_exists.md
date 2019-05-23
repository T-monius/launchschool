## Conditional Subqueries: EXISTS

### Understanding
- `EXISTS` is useful when returning distinct matches
  + Returns `true` if at least one row is matched
  + General syntax `SELECT 1 WHERE...`
  + The `WHERE` is especially useful when matching a column of one table with that of a column of another in my understanding

### Task
- Write a SELECT query that returns a list of names of everyone who has bid in the auction. While it is possible (and perhaps easier) to do this with a JOIN clause, we're going to do things differently: use a subquery with the EXISTS clause instead. Here is the expected output:

      name
-----------------
 Alison Walker
 James Quinn
 Taylor Williams
 Alexis Jones
 Gwen Miller
 Alan Parker
(6 rows)

### Implementation
- Compare the `bidders.id` and `bids.bidders_id` columns with `EXISTS` subquery syntax
