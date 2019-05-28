## SELECT part_number

### Understanding
- Select just from the `parts` table
  + Filter for parts whose part_number starts with three

### Task
- SELECT part_number

We want to grab all parts that have a part_number that starts with 3. Write a SELECT query to get this information. This table may show all attributes of the parts table.

### Implementation
- `SELECT` from `parts`
  + The `part_number`
  + Use the `WHERE` clause to perform a type conversion from integer to string and compare
  + ```sql
      SELECT part_number FROM parts
      WHERE CAST(part_number AS "text") LIKE '3%';
    ```