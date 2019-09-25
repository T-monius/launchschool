// double_char2.js

function doubleConsonants(str) {
  var dubConsonants = '';
  for (var i = 0; i < str.length; i += 1) {
    var chr = str[i];
    chr.match(CONSONANTS) ? dubConsonants += chr + chr : dubConsonants += chr
  }
  return dubConsonants;
}

const CONSONANTS = /[bcdfghjklmnpqrstvwxyz]/ig

console.log(doubleConsonants('String'));          // "SSttrrinngg"
console.log(doubleConsonants('Hello-World!'));    // "HHellllo-WWorrlldd!"
console.log(doubleConsonants('July 4th'));        // "JJullyy 4tthh"
console.log(doubleConsonants(''));                // ""