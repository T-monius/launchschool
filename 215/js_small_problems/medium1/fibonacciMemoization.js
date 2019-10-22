// fibonacciMemoization.js

var fibonacci = function fibonacci(n, fibSeries={}) {
  if (n <= 2) return 1
  if (fibSeries[n]) { return fibSeries[n] }
  fibSeries[n] = fibonacci(n - 1, fibSeries) + fibonacci(n - 2, fibSeries);
  return fibSeries[n];
}

console.log(fibonacci(20));       // 6765
console.log(fibonacci(50));       // 12586269025
console.log(fibonacci(75));       // 2111485077978050