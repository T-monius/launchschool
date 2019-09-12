// find_missing_numbers.js

function missing(arr) {
  var missingElements = [];

  for (var i = 0; i < arr.length; i += 1) {
    if (arr[i] + 1 !== arr[i + 1]) {
      for (var j = arr[i] + 1; j < arr[i + 1] ; j += 1) {
        missingElements.push(j)
      }
    }
  }
  return missingElements;
}

console.log(missing([-3, -2, 1, 5]));                  // [-1, 0, 2, 3, 4]
console.log(missing([1, 2, 3, 4]));                    // []
console.log(missing([1, 5]));                          // [2, 3, 4]
console.log(missing([6]));                             // []