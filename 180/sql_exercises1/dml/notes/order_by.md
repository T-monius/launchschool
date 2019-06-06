## ORDER BY

### Understanding
- The order desired is by the highest count first

### Task
- In the previous exercise, we had to use a GROUP BY clause to obtain the expected output. In that exercise, we used an SQL query like:

```sql
SELECT devices.name AS name, COUNT(parts.device_id)
FROM devices
JOIN parts ON devices.id = parts.device_id
GROUP BY devices.name;
```

Now, we want to work with the same query, but we want to guarantee that the devices and the count of their parts are listed in descending alphabetical order. Alter the SQL query above so that we get a result table that looks like the following.

```
name          | count
--------------+-------
Gyroscope     |     5
Accelerometer |     3
(2 rows)
```

### Implementation
- `ORDER BY` descending count