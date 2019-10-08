// myReduce.js

function myReduce(array, func, initial) {
  var acc;
  if (initial) { acc = initial }

  array.forEach( function (element) {
    if (acc === undefined && initial === undefined) {
      acc = element;
    } else {
      acc = func(acc, element);
    }
  });
  return acc;
}

var smallest = function (result, value) {
  return result <= value ? result : value;
};

var sum = function (result, value) {
  return result + value;
};

console.log(myReduce([5, 12, 15, 1, 6], smallest));           // 1
console.log(myReduce([5, 12, 15, 1, 6], sum, 10));            // 49