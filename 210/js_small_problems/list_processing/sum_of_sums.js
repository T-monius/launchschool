// sum_of_sums.js

// var sumOfSums = function sumOfSums(intArr) {
//   return intArr.map( (_, idx) => intArr.slice(0, idx + 1)
//                                        .reduce( (acc, int) => acc + int))
//                                        .reduce( (acc, int) => acc + int)
// };

var sumOfSums = function sumOfSums(integerArr) {
  var sumAtIndexes = integerArr.map( function(_, idx) {
    return integerArr.slice(0, idx + 1).reduce( (acc, int) => acc + int)
  });
  return sumAtIndexes.reduce( (acc, int) => acc + int)
};

console.log(sumOfSums([3, 5, 2]));        // (3) + (3 + 5) + (3 + 5 + 2) --> 21
console.log(sumOfSums([1, 5, 7, 3]));     // (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) --> 36
console.log(sumOfSums([4]));              // 4
console.log(sumOfSums([1, 2, 3, 4, 5]));  // 35