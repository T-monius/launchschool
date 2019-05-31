## Services With At Least 3 Customers

### Understanding
- Just the `services` and `contracted_services` tables need be involved

### Task
- Write a query that displays the description for every service that is subscribed to by at least 3 customers. Include the customer count for each description in the report. The report should look like this:

```
 description  | count
--------------+-------
 DNS          |     3
 Unix Hosting |     5
(2 rows)
```

### Implementation
- SELECT decription and count service id
- Query `services`
- Join `contracted_services`
- Group by decription
- Filter for counts higher than 2
