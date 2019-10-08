// myMap.js

function myMap(array, func) {
  var transformedElements = [];
  array.forEach( function(currentElement) {
    transformedElements.push(func(currentElement));
  })
  return transformedElements;
}

var plusOne = function (n) { return n + 1; };

console.log(myMap([1, 2, 3, 4], plusOne));       // [ 2, 3, 4, 5 ]