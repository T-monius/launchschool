## Enumerated Types

### Understanding
- Currently, a `CHECK` constraint enforces the value in the `spectral_type` column
- Enumerated data type
  + One of a finite set of values
- Docs
  + `CREATE TYPE` command
    * `ENUM`, clause or method passed
    * Pass a set of argumments to `ENUM`
    * Order of arguments determines comparison/ordering
  + An enumerator will be a new type available anywhere in the database

### Task
- Remove the `CHECK` constraint
- Modify the column to an enumerated type

### Implementation
- Remove the `CHECK` constraint by altering the table and removing
- Create a new enumberator with my given letters
