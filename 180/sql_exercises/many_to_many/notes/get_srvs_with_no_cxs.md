## Get Services With No Customers

### Understanding
- The `services` table should be in the `SELECT` list
  + Description
  + The `FROM` clause should start from the table that will have data
    * `customers`

### Task
- Using RIGHT OUTER JOIN, write a query to display a list of all services that are not currently in use. Your output should look like this:

 description
-------------
 One-to-one Training
(1 row)

### Implementation
- Select from the `description` column of `services`
- Join the join table and `services` to the base `customers`
