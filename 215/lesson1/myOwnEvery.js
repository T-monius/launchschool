// myOwnEvery.js

function myOwnEvery(array, func) {
  var flag = true;
  array.forEach( function(element) {
    if (!func(element)) { flag = false }
  })
  return flag;
}

var isAString = function (value) {
  return typeof value === 'string';
};

console.log(myOwnEvery(['a', 'a234', '1abc'], isAString));          // true
console.log(myOwnEvery(['a', 'a234', '1abc', 1], isAString));       // false