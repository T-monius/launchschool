// fibonacci.js

function fibonacci(number) {
  console.log(number);
  if (number < 2) {
    return number;
  } else {
    return fibonacci(number - 1) + fibonacci(number - 2);
  }
}

console.log(fibonacci(6)); // the 6th Fibonacci number is 8