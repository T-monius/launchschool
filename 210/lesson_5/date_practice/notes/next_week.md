## Next Week

### Understanding
- Two variables
  + `today`
  + `nextWeek`
- Do I instantiate `nextWeek` with the Date `today` itself?
  + That is how I read the question
  + The solution used `getTime`

### Task 12 and 13
- Create a new variable named `nextWeek` that is a new Date copied from the `today` object. Compare `nextWeek` and `today`, and log the results. Are they equal? Why or why not?

- The `===` operator only returns true with Date objects if the objects are the same object. Since we have two different objects (with the same values), we must instead compare the values represented by those objects.

- Compare the values returned by `toDateString` to determine whether the two objects are equal. Finally, add 7 days to the `nextWeek` date and compare the two objects again.

### Implementation
- 