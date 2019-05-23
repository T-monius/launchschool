## Query From a Virtual Table

### Understading
- Call `MAX` on the subquery of counts

### Task
- For this exercise, we'll make a slight departure from how we've been using subqueries. We have so far used subqueries to filter our results using a WHERE clause. In this exercise, we will build that filtering into the table that we will query. Write an SQL query that finds the largest number of bids from an individual bidder.

For this exercise, you must use a subquery to generate a result table (or virtual table), and then query that table for the largest number of bids.

Your output should look like this:

  max
------
    9
(1 row)

### Implementation
- Group bids by `bidder_id` with a count
  + Use this as a subquery calling max on it 
