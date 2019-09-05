// operations_problem1.js

var count = [0, 1, 2];

function push(arr, insertionValue) {
  arr[arr.length] = insertionValue;
  return arr.length;
}

console.log(push(count, 3));         // 4
console.log(count);                  // [ 0, 1, 2, 3 ]