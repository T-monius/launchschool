## Comparing Arrays

### Understanding
- Input
  + 2 arrays
  + Don't worry about validation
- Task
  + Compare all the values within the array to assure they are all equal
- Output
  + Boolean

### Task
- Write a function named `arraysEqual` that takes two arrays as arguments. The function should return `true` if the arrays contain the same values, or `false` if they do not.

- Test the function with arrays that contain number, string, and boolean values. Don't worry about handling arrays that contain other Arrays or Objects.

### Implementation
- Iterate the first array
  + Compare element at iteration with the same value at iteration index of the secondary array
  + Return false if any element comparison is false
- Return true at the end if the iteration is complete