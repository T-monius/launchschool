// array_operations6.js

function lastIndexOf(arr, searchValue) {
  var foundIndex = -1;

  for (var i = arr.length - 1; i >= 0; i -= 1) {
    if (arr[i] === searchValue) {
      foundIndex = i;
      break;
    }
  }
  return foundIndex;
}

console.log(lastIndexOf([1, 2, 3, 3], 3));         // 2
console.log(lastIndexOf([1, 2, 3], 4));            // -1