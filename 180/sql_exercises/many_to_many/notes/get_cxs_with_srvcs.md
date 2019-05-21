## Get Customers With Services

### Understanding
- If I want info on cxs who have services, I can use a particular JOIN to only match the `customers` table where there is a match in the `customers_services` table
  + An `INNER JOIN` should take care of this
  + It's the standard JOIN

### Task
- Write a query to retrieve the customer data for every customer who currently subscribes to at least one service.

### Implementation
- JOIN cxs and the JOIN table on the customer id
  + Return all customer information
  + Make the query distinct
