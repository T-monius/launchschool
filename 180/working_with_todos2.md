## Working with Todos 2

### Understanding
- The previous implementation references a todo by the `todo_id` and removes it from the array of lists by the `list_id`
- Can do the same thing with an SQL statement but no need to reference the `lists` table

### Task
- Write a new implementation of `DatabasePersistence#delete_todo_from_list` that removes the correct row from the todos table.

### Implementation
```sql
DELETE FROM todos WHERE id = $1 AND list_id = $2;
```
