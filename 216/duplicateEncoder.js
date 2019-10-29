// duplicateEncoder.js

const countCharacters = function countCharacters(charArray) {
  let counts = {};
  charArray.forEach( function(char) {
    counts[char] ? counts[char] += 1 : counts[char] = 1;
  })
  return counts;
}

const duplicateEncode = function duplicateEncode(word){
  let characters = Array.from(word);
  let counts = countCharacters(characters);
  return characters.map( function(char) {
                     return counts[char] > 1 ? ')' : '('
                   })
                   .join('');
}

console.log(duplicateEncode("din")) // "((("