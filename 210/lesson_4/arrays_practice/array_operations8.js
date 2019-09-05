// array_operations8.js

function push(arr, insertionValue) {
  arr[arr.length] = insertionValue;
  return arr.length;
}

function splice(arr, startingIndex, numOfElements) {
  var splicedArray = [];
  var endingIndex = startingIndex + numOfElements;

  for (var i = startingIndex; i < endingIndex; i += 1) {
    push(splicedArray, arr[i]);
  }

  for (var j = endingIndex; j < arr.length; j += 1) {
    arr[startingIndex] = arr[j];
    startingIndex += 1;
  }

  arr.length = arr.length - splicedArray.length;

  return splicedArray;
}

var count = [1, 2, 3, 4, 5, 6, 7, 8];

console.log(splice(count, 2, 5));                   // [ 3, 4, 5, 6, 7 ]
console.log(count);                                 // [ 1, 2, 8 ]