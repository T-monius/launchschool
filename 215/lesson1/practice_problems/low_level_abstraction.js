// low_level_abstraction.js

function isAllUnique(string) {
  var cleanString = string.replace(/\s/ig, '');
  cleanString = cleanString.toLowerCase();
  var previousCharacters = [];
  var i;
  var currentChar;

  for (i = 0; i < cleanString.length; i += 1) {
    currentChar = cleanString[i];
    if (previousCharacters.includes(currentChar)) { return false }
    previousCharacters.push(currentChar);
  }
  return true;
}

console.log(isAllUnique('The quick brown fox jumped over a lazy dog'));  // false
console.log(isAllUnique('123,456,789'));                                 // false
console.log(isAllUnique('The big apple'));                               // false
console.log(isAllUnique('The big apPlE'));                               // false
console.log(isAllUnique('!@#$%^&*()'));                                  // true
console.log(isAllUnique('abcdefghijklmnopqrstuvwxyz'));                  // true