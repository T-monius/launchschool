// array_operations3.js

var count = [1, 2, 3];

function unshift(arr, insertionValue) {
  var currentValue;
  var newValue = insertionValue;
  var iterations = arr.length;
  for (var i = 0; i <= iterations; i += 1) {
    currentValue = arr[i];
    arr[i] = newValue;
    newValue = currentValue;
  }
  return arr.length;
}

console.log(unshift(count, 0));      // 4
console.log(count);                  // [ 0, 1, 2, 3 ]