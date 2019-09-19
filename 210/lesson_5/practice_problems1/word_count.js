// word_count.js

function wordCount(str) {
  var occurences = {};
  var words = str.split(' ');

  words.forEach(function(word) {
    if (occurences[word]) {
      occurences[word] += 1;
    } else {
      occurences[word] = 1;
    }
  })
  
  return occurences;
}

console.log(wordCount('box car cat bag box'));  // { box: 2, car: 1, cat: 1, bag: 1 }