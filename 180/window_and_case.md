## Many to Many Exercises: Services for each Customer

### Further Exploration

#### Understanding
- The `lag` function seems to capture the previous return value of a query
- `case` is a conditional similar to a `switch` in C
- A window function is a type of aggregate where the output is not condensed into a single row

##### Original Output
```sql
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

##### Starting Code
```sql
SELECT customers.name,
       lag(customers.name)
         OVER (ORDER BY customers.name)
         AS previous,
       services.description
FROM customers
LEFT OUTER JOIN customers_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id;
```

##### Sample Output
```sql

     name      |   previous    |    description     
---------------+---------------+--------------------
 Chen Ke-Hua   |               | High Bandwidth
 Chen Ke-Hua   | Chen Ke-Hua   | Unix Hosting
 Jim Pornot    | Chen Ke-Hua   | Dedicated Hosting
 Jim Pornot    | Jim Pornot    | Unix Hosting
 Jim Pornot    | Jim Pornot    | Bulk Email
 Lynn Blake    | Jim Pornot    | Whois Registration
 Lynn Blake    | Lynn Blake    | High Bandwidth
 Lynn Blake    | Lynn Blake    | Business Support
 Lynn Blake    | Lynn Blake    | DNS
 Lynn Blake    | Lynn Blake    | Unix Hosting
 Nancy Monreal | Lynn Blake    | 
 Pat Johnson   | Nancy Monreal | Whois Registration
 Pat Johnson   | Pat Johnson   | DNS
 Pat Johnson   | Pat Johnson   | Unix Hosting
 Scott Lakso   | Pat Johnson   | DNS
 Scott Lakso   | Scott Lakso   | Dedicated Hosting
 Scott Lakso   | Scott Lakso   | Unix Hosting
(17 rows)```

#### Task
```sql
     name      |    description
---------------+--------------------
 Chen Ke-Hua   | High Bandwidth
               | Unix Hosting
 Jim Pornot    | Dedicated Hosting
               | Unix Hosting
               | Bulk Email
 Lynn Blake    | Whois Registration
               | High Bandwidth
               | Business Support
               | DNS
               | Unix Hosting
 Nancy Monreal |
 Pat Johnson   | Whois Registration
               | DNS
               | Unix Hosting
 Scott Lakso   | DNS
               | Dedicated Hosting
               | Unix Hosting
(17 rows)
```

#### Implementation
- Output an empty string in the `name` column if the `name` and `previous` column in the sample output are the same