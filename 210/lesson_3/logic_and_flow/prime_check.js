// prime_check.js

function isPrime(int) {
  if (int < 2) {
    return false
  }
  for (var i = 2; i < int; i += 1) {
    if (int % i === 0) {
      return false
    }
  }
  return true
}

console.log(isPrime(1));   // false
console.log(isPrime(2));   // true
console.log(isPrime(3));   // true
console.log(isPrime(43));  // true
console.log(isPrime(55));  // false
console.log(isPrime(0));   // false