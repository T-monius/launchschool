## Conditional Subqueries: EXISTS

### Understanding
- Want names from `bidders`
  + `WHERE` the bidder has bid in the auction

### Task
- Write a SELECT query that returns a list of names of everyone who has bid in the auction. While it is possible (and perhaps easier) to do this with a JOIN clause, we're going to do things differently: use a subquery with the EXISTS clause instead. Here is the expected output:
```
      name
-----------------
 Alison Walker
 James Quinn
 Taylor Williams
 Alexis Jones
 Gwen Miller
 Alan Parker
(6 rows)
```

### Implementation
```sql
SELECT name FROM bidders AS b
WHERE EXISTS(SELECT 1 FROM bids WHERE b.id = bids.bidder_id)
```

### Further Exploration
- More often than not, we can get an equivalent result by using a JOIN clause, instead of a subquery. Can you figure out a SELECT query that uses a JOIN clause that returns the same output as our solution above?

#### Understanding
- Join the bidders and bids where there are matches
  + `INNER JOIN`

#### Implementation
```sql
SELECT DISTINCT(name) FROM bidders
JOIN bids ON bidders.id = bids.bidder_id;
```