// array_use5.js

function firstNOf(arr, count) {
  var subArray = [];

  for (var i = 0; i < count; i += 1) {
    subArray.push(arr[i]);
  }
  return subArray;
}

var digits = [4, 8, 15, 16, 23, 42];
console.log(firstNOf(digits, 3));    // returns [4, 8, 15]
