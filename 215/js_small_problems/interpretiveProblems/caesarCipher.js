// caesarCipher.js

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

// simple shift
console.log(caesarEncrypt('A', 0));       // "A"
console.log(caesarEncrypt('A', 3));       // "D"

// wrap around
console.log(caesarEncrypt('y', 5));       // "d"
console.log(caesarEncrypt('a', 47));      // "v"

// all letters
console.log(caesarEncrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 25));
// "ZABCDEFGHIJKLMNOPQRSTUVWXY"
console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 5));
// "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"

// many non-letters
console.log(caesarEncrypt('There are, as you can see, many punctuations. Right?; Wrong?', 2));
// "Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?"