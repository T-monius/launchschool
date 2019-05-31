## Get Customers With No Services

### Understanding
- `LEFT JOIN` will provide all cxs independent of services contracted
- `NULL` values will let us know where a customer has no services

### Task
- Write a query to retrieve the customer data for every customer who does not currently subscribe to any services.

### Implementation
- Left join and look for null with `WHERE`
