## Working with Lists 1

### Understanding
- There will be no need to get a new element id when working with a database
- We previously created a new hash and stored it in the session
- Creating a new list in the database is different
  + New row in a table
  + Just need a new name to create it.
  + Insert the new list with the name in an SQL statement

### Task
- Write a new implementation of `DatabasePersistence#create_new_list` that inserts new rows into the database.

### Implementation
- Write the sql statement that would insert a new list
```sql
INSERT INTO lists (name) VALUES ($1);
```
- Pass the statement and the name of the new list to the `DatabasePersistence#query` method
