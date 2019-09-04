// array_operations2.js

var count = [1, 2, 3];
var noCount = [];

function pop(arr) {
  var lastElement = arr[arr.length - 1];
  arr.length = arr.length - 1;
  return lastElement;
}

console.log(pop(count));             // 3
console.log(count);                  // [ 1, 2 ]
console.log(pop(noCount));           // undefined
console.log(noCount);                // []