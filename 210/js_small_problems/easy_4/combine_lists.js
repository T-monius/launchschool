// combine_lists.js

function interleave(arr, arr1) {
  return arr.flatMap( (element, idx) => [element, arr1[idx]] )
}

console.log(interleave([1, 2, 3], ['a', 'b', 'c']));    // [1, "a", 2, "b", 3, "c"]