// double_char.js

function repeater(str) {
  var repeatedCharacters = '';
  for (var i = 0; i < str.length; i += 1) {
    repeatedCharacters += str[i] + str[i];
  }
  return repeatedCharacters;
}

console.log(repeater('Hello'));        // "HHeelllloo"
console.log(repeater('Good job!'));    // "GGoooodd  jjoobb!!"
console.log(repeater(''));             // ""