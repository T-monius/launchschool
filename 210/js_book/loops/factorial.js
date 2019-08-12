// factorial.js

function times(number1, number2) {
  let result = number1 * number2;
  return result;
}

function factorial(num) {
  let new_factorial = 1;
  for(let multiplier = 1; multiplier <= num; multiplier += 1) {
    new_factorial = times(new_factorial, multiplier);
  }
  return new_factorial;
}

console.log(factorial(0));     // => 1
console.log(factorial(1));     // => 1
console.log(factorial(2));     // => 2
console.log(factorial(3));     // => 6
console.log(factorial(4));     // => 24
console.log(factorial(5));     // => 120
console.log(factorial(6));     // => 720
console.log(factorial(7));     // => 5040
console.log(factorial(8));     // => 40320