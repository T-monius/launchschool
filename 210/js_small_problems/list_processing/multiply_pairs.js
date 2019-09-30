// multiply_pairs.js

var multiplyAllPairs = function multiplyAllPairs(primaryArray, secondaryArray) {
  var productsArray = [];

  primaryArray.forEach( (int) => {
    secondaryArray.forEach( (secondaryInt) => {
      productsArray.push(int * secondaryInt);
    });
  });
  return productsArray.sort( (int, otherInt) => int - otherInt);
};

console.log(multiplyAllPairs([2, 4], [4, 3, 1, 2]));    // [2, 4, 4, 6, 8, 8, 12, 16]