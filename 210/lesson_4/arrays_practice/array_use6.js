// array_use6.js

function lastNOf(arr, count) {
  var startIndex = arr.length - count;
  var endIndex = startIndex + count;
  return arr.slice(startIndex, endIndex);
}

function lastNOfLSVersion(arr, count) {
  return arr.slice(arr.length - count);
}

var digits = [4, 8, 15, 16, 23, 42];
lastNOf(digits, 3);    // returns [16, 23, 42]

var digits = [4, 8, 15, 16, 23, 42];
console.log(lastNOf(digits, 3));    // returns [16, 23, 42]