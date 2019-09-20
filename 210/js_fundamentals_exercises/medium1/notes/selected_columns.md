## Skeleton

### Understanding
- What are 'specific columns'?
- Input
  + 2 arguments
  + Array
    * An array of nested arrays
    * All element arrays are the same length
  + Array
    * Each element is the index of each inner array to extract
    * Cols
- I've never seen two variables declared in the first condition of a `for` clause
  + Maybe that's the problem
- Also, the `result` array is being accessed with `j` before `i`
  + The row `i` should be referenced before the column `j`
  + Actually, they should be inverted since we're not accessing but assigning
    * We want to return an inverted array.
- The problem is that we are not creating the columns per a condition
  + This code pushes a mix if indexes referenced using the index of `col`
  + We need to create a column only if it is in the `cols` array

### Task
- The `getSelectedColumns` function selects and extracts specific columns to a new array. Currently, the function is not producing the expected result. Go over the function and the sample runs shown below. What do you think the problem is?

### Answer
- I was way off
- The problem is that the `length` variable is reassigned a new value in the second loop.