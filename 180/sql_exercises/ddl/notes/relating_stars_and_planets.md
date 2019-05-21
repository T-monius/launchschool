## Relating Stars and Planets

### Understanding
- We did not relate the stars and planets
  + Standalone tables
  + There is no relationship between the rows of each table

### Task
- Add a `star_id` column to `planets`
  + Relates the planets in `planets` to its home star in `stars`
  + Required
  + Unique value
    * Present in `stars`

### Implementation
- Add `star_id` to `planets`
  + Unique integer
  + Not null
  + Foreign key linked to `id` in `stars`



#### Solution
```sql
ALTER TABLE planets
ADD COLUMN star_id integer NOT NULL REFERENCES stars (id);
```