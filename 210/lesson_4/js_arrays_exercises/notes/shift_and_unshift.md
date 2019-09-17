## Array Shift and Unshift

### Understanding `shift`
- Mutates the caller
- Input
  + Array (for our purposes/ would otherwise be invoked on an array)
- Output
  + The element that was at the first index
  + Or, `undefined` if the array was empty

### Understanding `unshift`
- Mutates the caller
- Input
  + Array
  + Arbitrary number of values
- Task
  + Add the secondary inputs to the first
    * The first being a collection/array
- Output
  + The new length of the array

### Task
- In this exercise, you will implement your own versions of the `Array.prototype.shift` and `Array.prototype.unshift` methods. These methods manipulate the contents of an array starting from the first index.

The shift method removes the first element from an array and returns that element; if the array is empty, `shift` returns `undefined`. The `unshift` method adds one or more elements to the start of an array and returns the new length of the array. Both methods mutate the original array.

### Implementation `shift`
- Set the last element of the input array to a return variable
- Iterate
  + Change the index of elements by one
- Reset the length of the array by minus one
- Return the intended return variable

### Implementation `unshift`
```js
function unshift(arr, newFirstValue) {
  for (var i = arr.length; i >= 0; i -= 1) {
    if (i === 0) {
      arr[i] = newFirstValue;
    } else {
      arr[i] = arr[i - 1];
    }
  }

  return arr.length;
}
````

- Assign the first value (0 of `arguments`) to a variable
- Determine how many elements to add
  + Set to a variable
  + `arguments.length - 1`
- Determine the last index of the input array
  + Set to a variable
  + `arr.length - 1`
- Determine the index at which to start adding the elements
  + Set to a variable
  + 'New last index' - 'New number of elements'
- Iterate the array backwards: from last index + number of new elements
  + Reassign index at iteration to element 'new number of elements' previous
  + At index 'new length' - 'new elements'
    * assign the secondary input values
    * Begin decrementing the `newElementIndex` value
- Return the new length