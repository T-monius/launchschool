## Planetary Mass Precision

### Understanding
- Planetary masses to be measured per Jupiter
- Data type `integer` is inappropriate
  + Only useful for planets >= Jupiter

### Task
- Modify `mass` column
  + In `planets`
  + Allow any degree of precision
  + Must be positive
  + Not `null`

### Implementation
- Have to `ALTER COLUMN`
  + `TYPE`
- `ADD` a check constraint for positivity
- `SET` not null?
