// intermediate_array_use5.js

function matrixSums(arr) {
  return arr.map( innerArr => innerArr.reduce((acc, int) => acc + int) );
}

console.log(matrixSums([[2, 8, 5], [12, 48, 0], [12]]));  // returns [15, 60, 12]