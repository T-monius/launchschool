## Services for each Customer

### Understanding
- Need to group cxs to services
  + Aggregate services

### Task
- Write a query to display a list of all customer names together with a comma-separated list of the services they use. Your output should look like this:

```
     name      |                                services
---------------+-------------------------------------------------------------------------
 Pat Johnson   | Unix Hosting, DNS, Whois Registration
 Nancy Monreal |
 Lynn Blake    | DNS, Whois Registration, High Bandwidth, Business Support, Unix Hosting
 Chen Ke-Hua   | High Bandwidth, Unix Hosting
 Scott Lakso   | DNS, Dedicated Hosting, Unix Hosting
 Jim Pornot    | Unix Hosting, Dedicated Hosting, Bulk Email
(6 rows)
```

### Implementation
- `GROUP BY` cxs
- `string_agg`