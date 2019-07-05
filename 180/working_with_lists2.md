## Working with Lists 2

### Understanding
- Previously deleting lists by an `:id` value in and array
- Database lists are deleted with an SQL statement

### Task
- Write a new implementation of `DatabasePersistence#delete_list` that removes the correct row from the lists table.

### Implementation
- Write the appropriate SQL statement to delete a particular list
  + The `WHERE` clause should filter by the `id` of the list
  ```sql
  DELETE FROM lists WHERE id = $1;
  ```
- Invoke the `query` method with the SQL statement
