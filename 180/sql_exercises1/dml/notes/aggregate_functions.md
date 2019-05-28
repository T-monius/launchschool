## Aggregate Functions

### Understanding
- Join the `devices` and `parts` tables
  + Select list of `name` and a count of the parts for the device (device_id in `parts`)

### Task
- Write an SQL query that returns a result table with the name of each device in our database together with the number of parts for that device.

### Implementation
- Select the name of the product and as count on the device id
  + Group by the name
