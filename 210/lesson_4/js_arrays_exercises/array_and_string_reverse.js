// array_and_string_reverse.js

function reverse(inputForReversal) {
  var arr = Array.isArray(inputForReversal);
  var resultInReverse;
  var lastIndex = inputForReversal.length - 1;
  var i;
  var j = 0;
  if (arr) {
    resultInReverse = [];
  } else {
    resultInReverse = '';
  }

  for (i = lastIndex; i >= 0; i -= 1) {
    if (arr) {
      resultInReverse[j] = inputForReversal[i]
    } else {
      resultInReverse += inputForReversal[i];
    }
    j += 1;
  }
  return resultInReverse;
}

console.log(reverse('Hello'));           // "olleH"
console.log(reverse('a'));               // "a"
console.log(reverse([1, 2, 3, 4]));      // [4, 3, 2, 1]
console.log(reverse([]));                // []

var array = [1, 2, 3];
console.log(reverse(array));             // [3, 2, 1]
console.log(array);                      // [1, 2, 3]