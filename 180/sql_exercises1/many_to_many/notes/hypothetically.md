## Hypothetically

### Understanding
- Can use a query similar to problem 7 for the first query
- 2nd query
  + Need all customers
  + Need all of the big ticket items
  + Multiply total of customers by total of big ticket items
  + 1st instinct
    * Multiply two subqueries
    * Total customers as one query and total big ticket items as another and multiply
  + Alternative
    * `SUM` on the price
    * Use a `CROSS JOIN`
    * This will give us all customers by all services
    * Filter by the price

### Task
- The company president is looking to increase revenue. As a prelude to his decision making, he asks for two numbers: the amount of expected income from "big ticket" services (those services that cost more than $100) and the maximum income the company could achieve if it managed to convince all of its customers to select all of the company's big ticket items.

For simplicity, your solution should involve two separate SQL queries: one that reports the current expected income level, and one that reports the hypothetical maximum. The outputs should look like this:

```
 sum
--------
 500.00
(1 row)
```
```
   sum
---------
 10493.00
(1 row)
```

### Implementation
- First query:
```sql
SELECT SUM(s.price) FROM services AS s
JOIN contracted_services AS cs ON s.id = cs.service_id
WHERE s.price >= 100.00;
```

- Second query:
  + `CROSS JOIN` the `customers` and `services` directly (skip the cross join table)
```sql
SELECT SUM(s.price) FROM services AS s
CROSS JOIN customers AS c
WHERE s.price >= 100.00;
``` 
