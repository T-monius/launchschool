// array_operations4.js

var count = [1, 2, 3];

function shift(arr) {
  var firstValue = arr[0];
  for (var i = 0; i < arr.length; i += 1) {
    arr[i] = arr[i + 1];
  }
  arr.length -= 1;

  return firstValue;
}

console.log(shift(count));           // 1
console.log(count);                  // [ 2, 3 ]