## Services for Each Customer

### Understanding
- Need to join cxs to services regardless of whether or not they have services
- Group
- Aggregate strings

### Task
- Write a query to display a list of all customer names together with a comma-separated list of the services they use. Your output should look like this:

     name      |                                services
---------------+-------------------------------------------------------------------------
 Pat Johnson   | Unix Hosting, DNS, Whois Registration
 Nancy Monreal |
 Lynn Blake    | DNS, Whois Registration, High Bandwidth, Business Support, Unix Hosting
 Chen Ke-Hua   | High Bandwidth, Unix Hosting
 Scott Lakso   | DNS, Dedicated Hosting, Unix Hosting
 Jim Pornot    | Unix Hosting, Dedicated Hosting, Bulk Email
(6 rows)

### Implementation
- Select the `name` of the customer and the `description` of the service
  + Use `str_agg` on the `description`
  + `FROM` cx table w/ a `FULL JOIN` join table `INNER`?  on `services`
- `GROUP BY` customer `name`
