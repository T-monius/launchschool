// sumSquare.js

var oneUpTo = function oneUpTo(n) {
  var range = [];
  var i = 1;
  while (i <= n) {
    range.push(i);
    i += 1;
  }
  return range;
};

var sumSquare = function sumSquare(range) {
  var sum = range.reduce( function (sum, int) {
    return sum + int;
  });
  return sum ** 2;
};

var squareSum = function squareSum(range) {
  return range.map( function (int) {
                return int ** 2;
              })
              .reduce( function (sum, square) {
                return sum + square;
              });
}

var sumSquareDifference = function sumSquareDifference(n) {
  var firstNInts = oneUpTo(n);
  return sumSquare(firstNInts) - squareSum(firstNInts);
};

console.log(sumSquareDifference(3));      // 22 --> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
console.log(sumSquareDifference(10));     // 2640
console.log(sumSquareDifference(1));      // 0
console.log(sumSquareDifference(100));    // 25164150