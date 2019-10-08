// anagrams.js

function anagram(word, list) {
  return list.filter( function(listWord) {
    return word.split('').sort().join('') === listWord.split('').sort().join('');
  });
}

console.log(anagram('listen', ['enlists', 'google', 'inlets', 'banana']));  // [ "inlets" ]
console.log(anagram('listen', ['enlist', 'google', 'inlets', 'banana']));   // [ "enlist", "inlets" ]