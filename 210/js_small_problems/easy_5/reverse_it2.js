// reverse_it2.js

function reverseWords(str) {
  return str.split(' ').map ( function(word) {
    return word.length > 4 ? word.split('').reverse().join('') : word
  }).join(' ');
}

console.log(reverseWords('Professional'));             // "lanoisseforP"
console.log(reverseWords('Walk around the block'));    // "Walk dnuora the kcolb"
console.log(reverseWords('Launch School'));            // "hcnuaL loohcS"