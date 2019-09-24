// word_sizes2.js

function wordSizes(str) {
  var sizeCount = {};
  if (str.length === 0) { return sizeCount }
  var words = str.match(/[a-z']+/ig);

  words.forEach( function(word) {
    word.replace("'", '');
    wordSize = word.length;
    if (sizeCount[wordSize]) {
      sizeCount[wordSize] += 1;
    } else {
      sizeCount[wordSize] = 1;
    }
  })
  return sizeCount;
}

console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 2 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 3 }
console.log(wordSizes("What's up doc?"));                              // { "5": 1, "2": 1, "3": 1 }
console.log(wordSizes(''));                                            // {}