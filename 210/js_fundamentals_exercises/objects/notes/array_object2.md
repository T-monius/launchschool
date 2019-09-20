## Array Object Part 2

### Task
- A user wrote a function that takes an array as an argument and returns its average. Given the code below, the user expects the `average` function to return `5`. Is the user's expectation correct? Why or why not?

```js
var myArray = [5, 5];
myArray[-1] = 5;
myArray[-2] = 5;

function average(array) {
  var sum = 0;
  var i;

  for (i = -2; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / array.length;
}

average(myArray);
````
- Hoisted version
```js
function average(array) {
  var sum;
  var i;
  sum = 0

  for (i = -2; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / array.length;
}

var myArray

myArray = [5, 5];
myArray[-1] = 5;
myArray[-2] = 5;



average(myArray);
```

### Understanding
- First off, the user is iterating from `-2` which is going to return `undefined` in the array.
  + Then, an attempt to add `undefined` zero follows.
    * This would result in `NaN`
    * All further operations would return `NaN`
  + However, those indexes are assigned later in the progam

### Answer
- The `sum` would ultimately result in `20` when the iteration over the array is complete
  + However, the length would reflect `2` which is one greater then the greatest index not the total of all object properties
  + The return value would be `10`

### Further Exploration
- Refactor the average function so that it returns the result that the user expected, `5`.

### Understanding FE
- We can divice by the total keys of the object and not its `length` property to return the desired result