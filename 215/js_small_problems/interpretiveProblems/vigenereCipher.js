// vigenereCipher.js

const UPPER_ALPHAS = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
                      'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 
                      'X', 'Y', 'Z' ]
const LOWER_ALPHAS = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
                 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                 'w', 'x', 'y', 'z' ]

var shiftCharacter = function shiftCharacter(char, n) {
  var currentCharIdx;
  var newCharIdx;
  var alphaArray;
  alphaArray = UPPER_ALPHAS.includes(char) ? [...UPPER_ALPHAS] : [...LOWER_ALPHAS]
  currentCharIdx = alphaArray.indexOf(char);
  newCharIdx = (currentCharIdx + n) % 26;
  return alphaArray[newCharIdx];
};

var caesarEncrypt = function caesarEncrypt(str, n) {
  return Array.from(str, function(char) {    
                if (UPPER_ALPHAS.includes(char) || LOWER_ALPHAS.includes(char)) {
                  return shiftCharacter(char, n);
                } else {
                  return char;
                }
              })
              .join('');
};

var alphaIndex = function alphaIndex(char) {
  return UPPER_ALPHAS.includes(char) ? UPPER_ALPHAS.indexOf(char) : LOWER_ALPHAS.indexOf(char)
}

var vigenereEncrypt = function vigenereEncrypt(str, keyword) {
  var keywordIdx = 0;
  var keywordMaxIdx = keyword.length;
  return Array.from(str, function(currentChar) {
                var encryptedChar;
                if (/[a-zA-z]/.test(currentChar)) {
                  encryptedChar = caesarEncrypt(currentChar, alphaIndex(keyword[keywordIdx]));
                  keywordIdx = (keywordIdx + 1) % keywordMaxIdx;
                  return encryptedChar;
                } else {
                  return currentChar;
                }
              })
              .join('');
}

console.log(vigenereEncrypt("Pineapples don't go on pizzas!", 'meat'));
// "Bmnxmtpeqw dhz'x gh ar pbldal!"
console.log(vigenereEncrypt("Pineapples don't go on pizzas!", 'A'));
// "Pineapples don't go on pizzas!"
console.log(vigenereEncrypt("Pineapples don't go on pizzas!", 'Aa'));
// "Pineapples don't go on pizzas!"
console.log(vigenereEncrypt("Pineapples don't go on pizzas!", 'cab'));
// "Riogaqrlfu dpp't hq oo riabat!"
console.log(vigenereEncrypt("Dog", 'Rabbit'));
// "Uoh"