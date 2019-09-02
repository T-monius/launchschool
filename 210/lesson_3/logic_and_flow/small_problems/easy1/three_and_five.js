// three_and_five.js

function multisum(int) {
  var sum = 0;
  for (var i = 1; i <= int; i += 1) {
    if (i % 3 === 0 || i % 5 === 0) {
      sum += i;
    }
  }
  return sum;
}

console.log(multisum(3));
console.log(multisum(5));
console.log(multisum(10));
console.log(multisum(1000));