// array_use7.js

function lastNOf(arr, count) {
  if (arr.length < count) {
    return arr.slice(0);
  }
  return arr.slice(arr.length - count);
}

var digits = [4, 8, 15, 16, 23, 42];
console.log(lastNOf(digits, 3));    // returns [16, 23, 42]
console.log(lastNOf(digits, 8));    // returns [4, 8, 15, 16, 23, 42]