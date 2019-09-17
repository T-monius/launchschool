// array_concat1.js

function concat(array1, secondArgument) {
  var resultArray = [];

  for (var i = 0; i < array1.length; i += 1) {
    resultArray.push(array1[i])
  }

  if (Array.isArray(secondArgument)) {
    for (var j = 0; j < secondArgument.length; j += 1) {
      resultArray.push(secondArgument[j]);
    }
  } else {
    resultArray.push(secondArgument);
  }
  return resultArray;
}

console.log(concat([1, 2, 3], [4, 5, 6]));          // [1, 2, 3, 4, 5, 6]
console.log(concat([1, 2], 3));                     // [1, 2, 3]
console.log(concat([2, 3], ['two', 'three']));      // [2, 3, "two", "three"]
console.log(concat([2, 3], 'four'));                // [2, 3, "four"]


var obj = { a: 2, b: 3 };
var newArray = concat([2, 3], obj);
console.log(newArray);                              // [2, 3, { a: 2, b: 3 }]

obj.a = 'two';
console.log(newArray);                              // [2, 3, { a: "two", b: 3 }]

var arr1 = [1, 2, 3];
var arr2 = [4, 5, obj];
var arr3 = concat(arr1, arr2);
console.log(arr3);                                  // [1, 2, 3, 4, 5, { a: "two", b: 3 }]
obj.b = 'three';
console.log(arr3);                                  // [1, 2, 3, 4, 5, { a: "two", b: "three" }]

arr3[5].b = 3;                         // or, `arr3[5]['b'] = 3;`
console.log(obj);                                   // { a: "two", b: 3 }