## Set Up Database

### Understanding
- Theme: workshop
- Tables
  + `devices`
    * Primary key, `id`
    * `name`, string and not null
    * `created_at`, date device was created, `timestamp`, default related to the date created
  + `parts`
    * Unique to each device
    * `id`, primary key, serialized
    * `part_number`, unique, not null
    * `device_id`, foreign key, associates parts with devices

### Task
- Create the database to reflect the workshop

### Implementation
- Create the `workshop` database with  `createdb` from the command line
- Create the two tables of the database with `CREATE TABLE`
  + Define the columns in the parentheses
  + Default for `created_at` should be the `NOW()` function
    * `NOW` must be followed by parentheses or it will not be interpreted as a column by postgresql
  + `parts`
    * `device_id` is created to delete the entry if the associated device is deleted
