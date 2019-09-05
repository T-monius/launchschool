// array_operations7.js

function push(arr, insertionValue) {
  arr[arr.length] = insertionValue;
  return arr.length;
}

function slice(arr, startingIndex, endingIndex) {
  var slicedArray = [];

  for (var i = startingIndex; i < endingIndex; i += 1) {
    push(slicedArray, arr[i]);
  }
  return slicedArray;
}

console.log(slice([1, 2, 3, 4, 5], 0, 2));                      // [ 1, 2 ]
console.log(slice(['a', 'b', 'c', 'd', 'e', 'f', 'g'], 1, 3));  // [ 'b', 'c' ]