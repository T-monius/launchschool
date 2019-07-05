## Working with Lists 3

### Understanding
- The previous code require finding the list then updating the value saved in a hash with the key `:name`
- The database store the list's name in a field `name`
  + Updating that row is all that is needed
  + Distinguish the row with a unique identifier (i.e. `id`)

### Task
- Write a new implementation of `DatabasePersistence#update_list_name` that updates a row in the database.

### Implementation
- Write an SQL statement to update the list's name
```sql
UPDATE lists SET name = $1 WHERE id = $2;
```
- Inoke the SQL statement in the `query` method
