## Hypothetically

### Understanding
- We need to find how many of our clients currently use 'big ticket' items
  + 

### Task
- The company president is looking to increase revenue. As a prelude to his decision making, he asks for two numbers: the amount of expected income from "big ticket" services (those services that cost more than $100) and the maximum income the company could achieve if it managed to convince all of its customers to select all of the company's big ticket items.

For simplicity, your solution should involve two separate SQL queries: one that reports the current expected income level, and one that reports the hypothetical maximum. The outputs should look like this:

 sum
--------
 500.00
(1 row)

   sum
---------
 10493.00
(1 row)

### Implementation
- First query
  + Join the `services` and join tables.
  + `Sum` prices
  + `HAVING` for prices that are more than $100.00
    * Turns out a simple `WHERE` clause is more appropriate here since we're not grouping
    * However, we could alternatively group by price and then use the `HAVING`

- Second query
  + Join `services`, `customers`, and the join table
  + Group by the product price
    * Distinguish by those having a price greater than $100.00 and sum them
    * Count customer ids
    * Multiply, somehow, the price sum and the count?
