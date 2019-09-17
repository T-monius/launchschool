## Array Pop and Push

### Understanding Pop
- Input
  + Array
- Output
  + Value
  + Or, `undefined`

### Understanding Push
- Input
  + Arbitrary number of argutments
    * In our case, the first is the argument to array to push to
  + Any type
- Output
  + Original array
    * The first argument in our case
  + Other arguments appended

### Task
- In this exercise, you will implement your own version of two Array methods: `Array.prototype.pop` and `Array.prototype.push`. The `pop` method removes the last element from an array and returns that element. If `pop` is called on an empty array, it returns `undefined`. The `push` method, on the other hand, adds one or more elements to the end of an array and returns the new length of the array.

### Implementation Pop
- Return `undefined` if empty
- Set result variable to last array element
- Set the array length to one less than the current length
- Return the result variable

### Implementation Push
- Set an argument array to the first argument (`arguments[0]`)
- Iterate from `arguments[1]`
  + Push all elements at iteration to the return array
- Return the return the length of the return array