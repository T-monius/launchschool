// repeated_characters.js

function repeatedCharacters(str) {
  var counts = {}
  var lowercaseString = str.toLowerCase();

  for (var i = 0; i < str.length; i += 1) {
    char = lowercaseString[i];
    if (counts[char]) {
      counts[char] += 1;
    } else {
      counts[char] = 1;
    }
  }

  for (char in counts) {
    if (counts[char] < 2) {
      delete counts[char];
    }
  }
  return counts;
}

console.log(repeatedCharacters('Programming'));    // { r: 2, g: 2, m: 2 }
console.log(repeatedCharacters('Combination'));    // { o: 2, i: 2, n: 2 }
console.log(repeatedCharacters('Pet'));            // {}
console.log(repeatedCharacters('Paper'));          // { p: 2 }
console.log(repeatedCharacters('Baseless'));       // { s: 3, e: 2 }