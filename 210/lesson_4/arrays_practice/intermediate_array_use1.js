// // intermediate_array_use1.js

// function oddElementsOf(arr) {
//   var i;
//   var oddIdxArr = [];

//   for (i = 1; i < arr.length; i += 2) {
//     oddIdxArr.push(arr[i]);
//   }
//   return oddIdxArr;
// }

// var digits = [4, 8, 15, 16, 23, 42];

// console.log(oddElementsOf(digits));    // returns [8, 16, 42]
// intermediate_array_use1.js

function oddElementsOf(arr) {
  return arr.filter((element, index) => index % 2 === 1)
}

var digits = [4, 8, 15, 16, 23, 42];

console.log(oddElementsOf(digits));    // returns [8, 16, 42]