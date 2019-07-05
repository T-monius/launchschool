## Working with Todos 1

### Understanding
- The previous version of the method adds a new Hash for a todo item into an array stored in a `lists` hash
- The database implements a todo as a row in a table
  + Need the name of the todo (i.e. `todo_name`)
  + Need the `id` of the list to associate the todo with (i.e. `list_id`)
  + The `id` of the todo in the row and it's completion status will be automatically set
  + No need to reference the `lists` table at all since `todos` stores the reference to the foreign entity

### Task
- Write a new implementation of `DatabasePersistence#create_new_todo` that inserts new rows into the database.

### Implementation
- Write a SQL statement to create the todo
```sql
INSERT INTO todos (name, list_id) VALUES ($1, $2);
```
- Invoke the `query` method to add the item