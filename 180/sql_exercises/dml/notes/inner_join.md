## INNER JOIN

### Understanding
- SQL Query
- Part of DML
  + Concerned with the data in tables
- Want to display devices and their parts
  + Only display a device if it has an associated part
  + The device name can be duplicated
  + The part_number of the device will not be duplicated

### Task
- Display `name` of `devices`
- Display `part_numer`

### Implementation
- `SELECT` statement
  + `name` and `part_number` in the column list
  + `INNER JOIN` `devices` and `parts`
    * Join `ON` `device_id`
    * Parts without a device will not be displayed
