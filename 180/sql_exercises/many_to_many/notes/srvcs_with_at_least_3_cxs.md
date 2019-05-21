## Srvcs With At Least 3 Cxs

### Understanding
- Query
- `services`
  + `description`

### Task
- Write a query that displays the description for every service that is subscribed to by at least 3 customers. Include the customer count for each description in the report. The report should look like this:

 description  | count
--------------+-------
 DNS          |     3
 Unix Hosting |     5
(2 rows)

### Implementation
- Join the `services` table to the join table.
- `GROUP BY` the `description`
- `HAVING` for selecting some aggregated data
- `ORDER BY` the count of the clients with that service
