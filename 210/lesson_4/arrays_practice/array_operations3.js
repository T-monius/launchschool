// array_operations1.js

var count = [1, 2, 3];

function unshift(arr, insertionValue) {
  var tempArray = arr;
  arr[0] = insertionValue;

  for (var i = 0; i < tempArray.length; i += 1) {
    arr[i + 1] = tempArray[i];
  }
  return arr.length;
}

console.log(unshift(count, 0));      // 4
console.log(count);                  // [ 0, 1, 2, 3 ]