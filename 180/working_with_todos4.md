## Working with Todos 4

### Understanding
- The previous version manipulates the `list` hash
- Here, we are concerned with the `lists` table
  + We can mark all todos as complete by updating the `completed` field with no `WHERE` clause
  + Actually, we want to only update the completion of the todos for the given list
    * Need a `WHERE` clause!!

### Task
- Write a new implementation of `DatabasePersistence#mark_all_todos_as_completed` that updates all rows in the database.

### Implementation
```sql
UPDATE todos SET completed = true;
```
