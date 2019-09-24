// word_sizes.js

function wordSizes(str) {
  var sizeCount = {};
  if (str.length === 0) { return sizeCount }
  var words = str.split(' ')

  words.forEach( function(word) {
    wordSize = word.length;
    if (sizeCount[wordSize]) {
      sizeCount[wordSize] += 1;
    } else {
      sizeCount[wordSize] = 1;
    }
  })
  return sizeCount;
}

console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 1, "6": 1 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 1, "7": 2 }
console.log(wordSizes("What's up doc?"));                              // { "2": 1, "4": 1, "6": 1 }
console.log(wordSizes(''));                                            // {}