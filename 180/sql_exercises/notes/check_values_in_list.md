## Check Values in List

### Understanding
- No current contraint on LS version of the table to restrict spectral_type to certain letters

### Task
- Add a constraint

### Implementation
- I created mine with a long convoluded constraint

### Solution
```sql
ALTER TABLE stars
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
ALTER COLUMN spectral_type SET NOT NULL;
```