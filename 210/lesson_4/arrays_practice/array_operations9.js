// array operations9.js

function push(arr, insertionValue) {
  arr[arr.length] = insertionValue;
  return arr.length;
}

function pushAll(targetArray, contentArray) {
  for (var i = 0; i < contentArray.length; i += 1) {
    push(targetArray, contentArray[i]);
  }
  return targetArray;
}

function concat(arr, arr1) {
  var combinedArray = [];
    pushAll(combinedArray, arr);
    pushAll(combinedArray, arr1);
  return combinedArray;
}

console.log(concat([1, 2, 3], [4, 5, 6]));       // [ 1, 2, 3, 4, 5, 6 ]