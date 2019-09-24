// combining_arrays.js

function union(arr, arr1) {
  var unionArray = [];

  arr.forEach( function(el) {
    if (!unionArray.includes(el)) {
      unionArray.push(el);
    }
  });

  arr1.forEach( function(el) {
    if (!unionArray.includes(el)) {
      unionArray.push(el);
    }
  });
  return unionArray;
}

console.log(union([1, 3, 5], [3, 6, 9]));    // [1, 3, 5, 6, 9]