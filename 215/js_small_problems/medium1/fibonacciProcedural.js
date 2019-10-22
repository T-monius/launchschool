// fibonnacciProcedural.js

var fibonacci = function fibonacci(numberInSequence) {
  var fibonacciSeries = [null, 1, 1];
  var i;

  for (i = 3; i <= numberInSequence; i += 1) {
    fibonacciSeries.push(fibonacciSeries[i - 1] + fibonacciSeries[i - 2]);
  }
  return fibonacciSeries[numberInSequence];
};

console.log(fibonacci(20));       // 6765
console.log(fibonacci(50));       // 12586269025
console.log(fibonacci(75));       // 2111485077978050