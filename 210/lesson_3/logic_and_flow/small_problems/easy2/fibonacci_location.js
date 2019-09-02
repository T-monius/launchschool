// fibonacci_location.js

function nthFibonacci(n) {
  if (n === 1 || n === 2) {
    return 1;
  }

  return nthFibonacci(n - 1) + nthFibonacci(n - 2);
}

function findFibonacciIndexByLength(desiredLength) {
  var i = 1;
  var fibonacciNumber;

  do {
    fibonacciNumber = nthFibonacci(i);
    i += 1;
  } while (String(fibonacciNumber).length < desiredLength)
  return i - 1;
}

console.log(findFibonacciIndexByLength(2));       // 7
console.log(findFibonacciIndexByLength(10));      // 45
console.log(findFibonacciIndexByLength(16));      // 74