## Multiply All Pairs

### Understanding
- Write a Fucntion
- Input
  + Two arguments
  + Both arrays
  + Elements in the example are integers
    * Shouldn't really matter
- Output
  + An array
  + All elements integers per the example (perhaps not relevant)
  + Represent the product of combinations

### Task
- Write a function that takes two array arguments, each containing a list of numbers, and returns a new array containing the products of all combinations of number pairs that exist between the two arrays. The returned array should be sorted in ascending numerical order.

- You may assume that neither argument will be an empty array.

```js
multiplyAllPairs([2, 4], [4, 3, 1, 2]);    // [2, 4, 4, 6, 8, 8, 12, 16]
````

### Implementation
- Set an empty array to a variable
- Iterate the primary input array
  + For each element of the primary input array
    * Iterate the secondary input array
    * Push the elemnt at outer iteration times element at inner iteration
- Sort the return array and return