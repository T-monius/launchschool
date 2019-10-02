## Sequence Count

### Understanding
- Input
  + 2 integers
  + `count`
  + Starting integer
- Output
  + Array
  + Each element is a multiple of the secondary input
    * First element (idx `0`) is `1` times the secondary element
    * If you create an array, the multiple is an offset of 1

### Task
- Create a function that takes two integers as arguments. The first argument is a `count`, and the second is the starting number of a sequence that your function will create. The function should return an array containing the same number of elements as the `count` argument. The value of each element should be a multiple of the starting number.

You may assume that the `count` argument will always be an integer greater than or equal to `0`. The starting number can be any integer. If the `count` is `0`, the function should return an empty array.

### Implementation
- Iterate from 1 (or iterate from `0` and offset the multiplication)
  + Push the secondary element times the index to the array
  + while index is less than count