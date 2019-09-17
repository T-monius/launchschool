// array_concat2.js

function concat() {
  var resultArray = [];

  for (var j = 0; j < arguments.length; j += 1) {
    if (Array.isArray(arguments[j])) {
      for (var k = 0; k < arguments[j].length; k += 1) {
        resultArray.push(arguments[j][k]);
      }
    } else {
      resultArray.push(arguments[j]);
    }
  }
  return resultArray;
}

console.log(concat([1, 2, 3], [4, 5, 6], [7, 8, 9]));    // [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(concat([1, 2], 'a', ['one', 'two']));        // [1, 2, "a", "one", "two"]
console.log(concat([1, 2], ['three'], 4));               // [1, 2, "three", 4]