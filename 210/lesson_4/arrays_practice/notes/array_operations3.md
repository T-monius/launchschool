## Unshift Method

### Understanding
- Input
  + Array
  + Value
- Side Effect
  + New value at the beginning of the array

### Task
- Write a function named `unshift` that accepts two arguments: an Array and a value. The function should insert the value at the beginning of the Array, and return the new length of the array. You will need a for loop for this problem.

### Implementation
- *Note* : The following preliminary implementation didn't take into consideration the concept of variables as pointers and assigning the input array to a new array operated on the same array when re-assigning values and iterating
- Copy the input array
- Use bracket notation to make the insertion value the first value of the input array
- Iterate over the copied array
  + Make each object at iteration the subsequent index of the input array
- Return the `length` of the array

#### Secondary implementation
- Iterate over the input array
  + Store two temporary variables as the current value at index before replacing.
  + At each iteration, assign the current value to one variable
  + Re-Assign the new value
  + Update the 'previous' value

#### LS Solution
- Iterates from on past the end of the array
  + Adds the index one over to the value at iteration at each iteration 