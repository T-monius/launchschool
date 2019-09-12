## Practice Problems: Find Missing Numbers

### Understanding
- Input
  + Array
    * Elements are integers
    * Sorted
    * Not necessarily consecutive
- Output
  + Array
  + Integers
  + Sorted
  + Gaps between the elements of the input array

### Task
- Write a function that takes a sorted array of integers as an argument, and returns an array that includes all the missing integers (in order) between the first and last elements of the argument.

```js
function missing(arr) {
  var missingsArr = [];
  var missingElement;

  for (var i = 0; i < arr.length; i += 1) {
    if (arr[i] + 1 !== arr[i + 1]) {
      missingElement = arr[i] + 1;
      missingsArr.push(missingElement);
      debugger;
      while (missingsArr[missingsArr.length - 1] + 1 !== arr[i + 1]) {
        debugger;
        missingElement = missingsArr[missingsArr.length - 1] + 1;
        missingsArr.push(missingElement);
      }
    }
  }
  return missingsArr;
}
```

### Implementation
- Set a return array
- Iterate the first array
  + If the next element is one greater than element at iteration
    * do Nothing
    * Else
      - Enter a subiteration
      - Do pushing of elements one greater until the next element of the input array is one greater then the last element of the result array