## What's My Value?

### Understanding
- The program will log:
  + `3`
  + `4`
  + `3`
  + `5`
- why
  + Array elements are non-negative positive integers.
  + The length of the array is one greater than the greatest positive integer property
  + In the case of addition of property `3.4` with value `'Oranges'` to the array, it's not an element of the array since it's not an integer. Therefore, the length of the array remains unchanged.
  + Similar is true in the case of property `-2`. It has no impact on the `length` propert since it is not an array element. However, it is still returned amongst the object's keys by the invocation of `Object.keys()` which will have an impact on the return value of the length property returned by the 'keys' array.

### Task
- What will the following program log to the console? Can you explain why?

```js
var array = ['Apples', 'Peaches', 'Grapes'];

array[3.4] = 'Oranges';
console.log(array.length);
console.log(Object.keys(array).length);

array[-2] = 'Watermelon';
console.log(array.length);
console.log(Object.keys(array).length);
```