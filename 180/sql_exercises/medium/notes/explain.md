## EXPLAIN

### Understanding
- Use the `EXPLAIN` keyword to analyze a previous statement
- Answer
  + The statements used to perform the analysis
  + Outputs
  + Thoughts
- Explain
  + Structure: query plan
    * Tree plan of nodes
    * Return: raw rows from a table
    * Scan nodes: sequential scans, index scans, bitmap index scans
  + Output
    * One line for each node in the plan tree
- Analyze
  + Attempt to see feedback regarding how well the databases `EXPLAIN` estimate performed

### Task
- For this exercise, let's explore the EXPLAIN PostgreSQL statement. It's a very useful SQL statement that lets us analyze the efficiency of our SQL statements. More specifically, use EXPLAIN to check the efficiency of the query statement we used in the exercise on EXISTS:

```sql
SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);
```

First use just EXPLAIN, then include the ANALYZE option as well. For your answer, list any SQL statements you used, along with the output you get back, and your thoughts on what is happening in both cases.

### Implementation
- Look at `EXPLAIN` in the docs
  + Seems that much of the information is arbitrary
    * Cost estimates are machine reflective
    * Don't tend to hold up in actual output
  + Three main types of query plans to watch for
  + `ANAYLYZE`
    * Mainly watch for whether `rows` match up
    * Time/cost outputs not very accurate or are arbitrary
- Run on `auction`
  + The query with `EXISTS` estimated 635 rows
    * I don't understand this at all
    * 1270 rows under sequential scan
    * Why so high of a row count for such a small data pool?