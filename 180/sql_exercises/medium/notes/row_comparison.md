## Row Comparison

### Understanding
- Find `id` for a given set of data
  + These pieces of data all pertain to one entity/row
  + `SELECT`
  + Do not use the keyword `AND`
- Need to use a row constructor
  + Create an arbitrary row
  + The `ROW` keyword creates an arbitrary row
- Row Constructor Comparison (LS: Row-wise Comparison)
  + Compare to rows with an operator
  + `row_constructor operator row_constructor`

### Task
- We want to check that a given item is in our database. There is one problem though: we have all of the data for the item, but we don't know the id number. Write an SQL query that will display the id for the item that matches all of the data that we know, but does not use the AND keyword. Here is the data we know:

`'Painting', 100.00, 250.00`

### Implementation
- Perform a select on the table `items`
  + Use the `WHERE` clause
  + Row comparison in the `WHERE` expression
  + Construct an arbitrary row with the `ROW` keyword
  + Compare it to the names of the fields in the table that match the values that I created in my arbitrary row.
