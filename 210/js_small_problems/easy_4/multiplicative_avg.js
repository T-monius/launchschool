// multiplicative_avg.js

function showMultiplicativeAverage(arr) {
  var product = arr.reduce ( (acc, int) => acc * int )
  var multiplicativeAvg = (product / arr.length).toFixed(3);
  return multiplicativeAvg;
}

console.log(showMultiplicativeAverage([3, 5]));                   // "7.500"
console.log(showMultiplicativeAverage([2, 5, 7, 11, 13, 17]));    // "28361.667"