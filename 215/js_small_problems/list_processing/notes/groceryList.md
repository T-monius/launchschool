## Small Problems: Grocery List

### Understanding
- Input
  + Nested array
  + Elements of inner arrays
    * `string`, grocery item
    * number, count
- Output
  + Array
  * String elements
- Functional Abstraction: Transformation
  + For each inner array
    * Low level abstraction
    * Iterate for the secondary element of inner array

### Task
- Write a function that takes a grocery list (a two-dimensional array) with each element containing a fruit and a quantity, and returns a one-dimensional array of fruits, in which each fruit appears a number of times equal to its quantity.

```js
buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]);
// returns ["apple", "apple", "apple", "orange", "banana", "banana"]
```

### Implementation
- Map the input array
  + Create another function `multipleItem`
    * Concatenate the string as many times as the number
    * Return in an array
  + Flatten or reduce the map