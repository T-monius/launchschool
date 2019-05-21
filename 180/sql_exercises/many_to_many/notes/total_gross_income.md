## Total Gross Income

### Understanding
- We need to associate every `sercice_id` from the `customers_services` table with a rate/price
- Once we have all of the pertinent prices, we need to sum them

### Task
- Assuming that everybody in our database has a bill coming due, and that all of them will pay on time, write a query to compute the total gross income we expect to receive.

  gross
 --------
 678.50
(1 row)

### Implementation
- `SUM` on the `services` price row
- Join the join table and services
