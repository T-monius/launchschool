// array_operations5.js

function indexOf(arr, searchValue) {
  var foundIndex = -1;

  for (var i = 0; i < arr.length; i += 1) {
    if (arr[i] === searchValue) {
      foundIndex = i;
      break;
    }
  }
  return foundIndex;
}

console.log(indexOf([1, 2, 3, 3], 3));         // 2
console.log(indexOf([1, 2, 3], 4));            // -1