// shift_and_unshift.js

function shift(arr) {
  if (arr.length === 0) {
    return undefined;
  }
  var firstElement = arr[0];

  for (var i = 1; i < arr.length; i += 1) {
    arr[i - 1] = arr[i];
  }
  arr.length = arr.length - 1;
  return firstElement;
}

function unshift() {
  var inputArr = arguments[0];
  var newElementCount = arguments.length - 1;
  var currentLastIndex = inputArr.length - 1;
  var newLastIndex = currentLastIndex + newElementCount;
  var newElementIndex = newLastIndex - inputArr.length;
  for (var i = newLastIndex; i >= 0; i -= 1) {
    if (i === newElementIndex) {
      inputArr[i] = arguments[newElementCount];
      newElementCount -= 1;
    } else {
      inputArr[i] = inputArr[i - newElementCount];
    }
  }

  return inputArr.length;
}

console.log(shift([1, 2, 3]));                // 1
console.log(shift([]));                       // undefined
console.log(shift([[1, 2, 3], 4, 5]));        // [1, 2, 3]

console.log(unshift([1, 2, 3], 5, 6));        // 5
console.log(unshift([1, 2, 3]));              // 3
console.log(unshift([4, 5], [1, 2, 3]));      // 3

var testArray = [1, 2, 3];
console.log(shift(testArray));                // 1
console.log(testArray);                       // [2, 3]
console.log(unshift(testArray, 5));           // 3
console.log(testArray);                       // [5, 2, 3]