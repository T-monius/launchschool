## Add a Moons Table

### Understanding
- Future, observe extrasolar moons
- `moons` table
  + In `extrasolar` db
  + `id`, unique auto-incrementing serial number
    * primary key
  + `designation`
    * number
    * integer
    * required
  + `semi_major_axis`
    * Average distance in kilometers from the planet from farthest point.
    * Number greater than 0
    * Not required
  + `mass`
    * Numberiv value
    * Greater than 0
    * Not required
  + Foreign Keys
    * Moons are related to planets
      - One to Many relationship
      - One planet can have many moons
      - A moon can have only one planet

### Task
- Add `moons` table

### Implementation
- Use the `CREATE TABLE` statement to create the `moons` table
- Inside of the parentheses, define the columns
  + `id` serial
    * Primary Key
  + `designation` integer not null
  + `semi_major_axis` numeric
    * Check constraint for greater than 0
  + `mass` numeric
    * Check constraint for greater than 0
  + `planet_id` integer not null
- Foreign key referencing an id of planets
  + Delete on cascade
