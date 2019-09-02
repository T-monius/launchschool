// stringy_strings.js

function stringy(int) {
  var alternatingStr = '';
  for (var i = 0; i < int; i += 1) {
    i % 2 === 0 ? alternatingStr += '1' : alternatingStr += '0';
  }
  return alternatingStr;
}

console.log(stringy(6));    // "101010"
console.log(stringy(9));    // "101010101"
console.log(stringy(4));    // "1010"
console.log(stringy(7));    // "1010101"