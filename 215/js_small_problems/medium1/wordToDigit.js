// wordToDigit.js

const DIGIT_DICT = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5,
                           six: 6, seven: 7, eigth: 8, nine: 9 }

var wordFromDigitDictionary = function wordFromDigitDictionary(word) {
  var punctuation = false;
  if (word.match(/[.?!]/)) {
    punctuation = word.match(/[.?!]/);
    word = word.replace(/[.?!]/, '');
  }
  word = DIGIT_DICT[word] ? DIGIT_DICT[word] : word
  return punctuation ? word + punctuation : word
};

var wordToDigit = function wordToDigit(phrase) {
  return phrase.split(' ')
               .map(wordFromDigitDictionary)
               .join(' ');
};

console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
// "Please call me at 5 5 5 1 2 3 4. Thanks."