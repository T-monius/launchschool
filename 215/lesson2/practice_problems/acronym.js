// acronym.js

function acronym(string) {
  var existingAcronym = string.match(/[A-Z]{2,}/);
  if (existingAcronym) { return existingAcronym[0] }
  return string.split(/[ \-]/)
               .map( function(word) {
                 return word[0].toUpperCase();
               })
               .join('');
}

console.log(acronym('Portable Network Graphics'));                  // "PNG"
console.log(acronym('First In, First Out'));                        // "FIFO"
console.log(acronym('PHP: HyperText Preprocessor'));                // "PHP"
console.log(acronym('Complementary metal-oxide semiconductor'));    // "CMOS"
console.log(acronym('Hyper-text Markup Language'));                 // "HTML"