## Find the Duplicate

### Understanding
- Input
  + Array
  + Integer elements
- Output
  + Integer element
    * The integer that occurs twice in the array

### Task
- Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), determine which value occurs twice. Write a function that will find and return the duplicate value that is in the array.

### Implementation
- Iterate
  + For each number at iteration
  + Compare its index to the value of the number past to `Array.prototype.lastIndexOf`
  + If the indexes are different
    * Return the number
- Return `-1` if no duplicate was found

#### Alternative Implementation
- You could sort the array
- Then, compare each element to the subsequent element
  + Return the element if there is a match