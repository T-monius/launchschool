// daily_double.js

function crunch(str) {
  var noDuplicates = '';
  for (var i = 0; i <= str.length - 1; i += 1) {
    if (str[i] !== noDuplicates[noDuplicates.length - 1]) {
      noDuplicates += str[i];
    }
  }
  return noDuplicates;
}

console.log(crunch('ddaaiillyy ddoouubbllee'));    // "daily double"
console.log(crunch('4444abcabccba'));              // "4abcabcba"
console.log(crunch('ggggggggggggggg'));            // "g"
console.log(crunch('a'));                          // "a"
console.log(crunch(''));                           // ""

