## Total Gross Income

### Understanding
- Add the prices for all of the currently contracted services
- Just need the join table and `services`

### Task
- Assuming that everybody in our database has a bill coming due, and that all of them will pay on time, write a query to compute the total gross income we expect to receive.

Answer:

```
  gross
 --------
 678.50
(1 row)
```

### Implementation
- `INNER JOIN` the two tables
  + `SUM` the prices as gross

### Result
- Somehow, the values in my tables don't exactly align with those in the LS example.