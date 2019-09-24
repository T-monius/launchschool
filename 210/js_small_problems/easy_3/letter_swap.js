// letter_swap.js

function swap(string) {
  var words = string.split(' ');
  words = words.map( function(word) {
    return wordSwap(word);
  })
  return words.join(' ');
}

function wordSwap(word) {
  var firstChar = word[0];
  var lastChar = word[word.length - 1];
  var chars = word.split('');
  chars[0] = lastChar;
  chars[chars.length - 1] = firstChar;
  return chars.join('')
}

console.log(swap('Oh what a wonderful day it is'));  // "hO thaw a londerfuw yad ti si"
console.log(swap('Abcde'));                          // "ebcdA"
console.log(swap('a'));                              // "a"