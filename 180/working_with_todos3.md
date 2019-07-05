## Working with Todos 3

### Understanding
- The current version finds the list in the `lists` array/hash then changes the value of a `:completed` key
- Need only to update the value of a single row in our `todos` table
  + Confirm it's the right todo with the `list_id` and `todo_id`
  + Set the new status

### Task
- Write a new implementation of `DatabasePersistence#update_todo_status` that updates a row in the database.

### Implementation
- The value of `is_competed` in our route is set to a boolean before sending the variable to the method in question negating any need to set the data type to a boolean when including it in our query.
```sql
UPDATE todos SET completed = $1 WHERE todo_id = $2 AND list_id = $3;
```
