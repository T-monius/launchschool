// intermediate_array_use3.js

function dupWithReverse(arr) {
  var result = [];

  for (var i = 0; i < arr.length; i += 1) {
    result.push(arr[i]);
  }

  for (var j = arr.length - 1; i >= 0; i -= 1) {
    result.push(arr[j]);
  }
  return result;
}

var digits = [4, 8, 15, 16, 23, 42];
console.log(dupWithReverse(digits));