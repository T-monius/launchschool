## Comparing SQL Statements

### Understanding
- 

### Task
- In this exercise, we'll use EXPLAIN ANALYZE to compare the efficiency of two SQL statements. These two statements are actually from the "Query From a Virtual Table" exercise in this set. In that exercise, we stated that our subquery-based solution:

```sql
SELECT MAX(bid_counts.count) FROM
  (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;
```

was actually faster than the simpler equivalent without subqueries:

```sql
SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;
```

In this exercise, we will demonstrate this fact.

Run EXPLAIN ANALYZE on the two statements above. Compare the planning time, execution time, and the total time required to run these two statements. Also compare the total "costs". Which statement is more efficient and why?

### Implementation
- The planning time on the second statement (with `ORDER BY`) is unquestionably faster. It's almost 80 times faster in planning and 17 times faster in execution.
- Total time:
  + First: 96ish ms
  + Second: < 2 ms
- Total cost is also lower although not by much.
- Which one is more efficient?
  + Based on my understanding of efficiency, I'd say the second 
- LS Answer
  + The LS runs put the subquery as much more efficient as do other student's. This must be a case of my machine running poorly.