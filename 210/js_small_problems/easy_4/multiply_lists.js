// multiply_lists.js

function multiplyList(arr, arr1) {
  return arr.map( (element, idx) => element * arr1[idx])
}

console.log(multiplyList([3, 5, 7], [9, 10, 11]));    // [27, 50, 77]