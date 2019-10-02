## Name Swapping

### Understanding
- Write a function
- Input
  + String
  + Space separated string of names
- Output
  + String
  + The order of the names is swapped
  + `', '` separated

### Task
- Write a function that takes a string argument consisting of a first name, a space, and a last name, and returns a new string consisting of the last name, a comma, a space, and the first name.

### Implementation
- Split the string to an array
- Swap the order (can use destructuring assignment)
- Join with `', '`

### Further Exploration
- What if the person had more than one first name? Refactor the current solution so that it can accommodate this.

#### Understanding
- The destructuring assignment would still work for the swap portion
- The joining becomes a challenge
  + Rejoin everything but the last name (index `0`) with a space
  + Join the first name with a `','`
- The spread syntax may help
  + However, it seems `...` works when wanting to grab all of the elements
  + Could grab from index `1` on
  + `slice` would also do the trick