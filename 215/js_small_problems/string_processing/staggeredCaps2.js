// staggeredCaps2.js

var staggeredCase = function staggeredCase(str) {
  var count = 0;
  return str.split('')
            .map( function(char) {
              if (char.match(/[a-z]/i)) {
                char = count % 2 === 0 ? char.toUpperCase() : char.toLowerCase()
                count += 1;
              }
              return char;
            })
            .join('');
};

console.log(staggeredCase('I Love Launch School!'));        // "I lOvE lAuNcH sChOoL!"
console.log(staggeredCase('ALL CAPS'));                     // "AlL cApS"
console.log(staggeredCase('ignore 77 the 444 numbers'));    // "IgNoRe 77 ThE 444 nUmBeRs"