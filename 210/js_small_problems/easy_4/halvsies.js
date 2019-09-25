// halvsies.js

function halvsies(arr) {
  var half;
  var firstHalf;
  var secondHalf;
  half = arr.length / 2
  if (arr.length % 2 === 1) { half += 1 }
  firstHalf = arr.slice(0, half);
  secondHalf = arr.slice(half, arr.length)
  return [ firstHalf, secondHalf ];
}

console.log(halvsies([1, 2, 3, 4]));       // [[1, 2], [3, 4]]
console.log(halvsies([1, 5, 2, 4, 3]));    // [[1, 5, 2], [4, 3]]
console.log(halvsies([5]));                // [[5], []]
console.log(halvsies([]));                 // [[], []]