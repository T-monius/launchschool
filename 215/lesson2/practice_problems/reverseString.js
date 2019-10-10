// reverse_string.js

function reverse(string) {
  return Array.from(string).reduceRight( function(reverseString, char) {
    return reverseString + char;
  }, '')
}

console.log(reverse('hello'));                  // returns "olleh"
console.log(reverse('The quick brown fox'));    // returns "xof nworb kciuq ehT"