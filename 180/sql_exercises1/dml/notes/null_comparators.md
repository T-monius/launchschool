## IS NULL and IS NOT NULL

### Understanding
- Querying only the `parts` table will return the desired results
- If we used the `id` column, we could join the `devices` table to find where the `id` of `devices` was not in `device_id` of `parts`.

### Task
- Write two SQL queries:
  + One that generates a listing of parts that currently belong to a device.
  + One that generates a listing of parts that don't belong to a device.

Do not include the id column in your queries.

Expected Output:
```
part_number | device_id 
------------+-----------
         12 |         1
         14 |         1
         16 |         1
         31 |         2
         33 |         2
         35 |         2
         37 |         2
         39 |         2
(8 rows)
```

```
part_number | device_id 
------------+-----------
         50 |          
         54 |          
         58 |        
(3 rows)
```

### Implementation
- Select the `part_number` and `device_id` where there is a `device_id` and where there is not one
