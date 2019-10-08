// longestWord.js

function myReduce(array, func, initial) {
  var acc;
  if (initial) { acc = initial }

  array.forEach( function (element) {
    if (acc === undefined && initial === undefined) {
      acc = element;
    } else {
      acc = func(acc, element);
    }
  });
  return acc;
}

function longestWord(words) {
  return myReduce(words, longest);
}

var longest = function (result, currentWord) {
  return currentWord.length >= result.length ? currentWord : result;
};

console.log(longestWord(['abc', 'launch', 'targets', '']));      // "targets"