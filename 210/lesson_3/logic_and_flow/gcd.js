// gcd.js

function greatestAndSmallest(int, int1) {
  var greatest;
  var smallest;
  if (int >= int1) {
    greatest = int;
    smallest = int1;
  } else {
    greatest = int1;
    smallest = int;
  }
  return [greatest, smallest];
}

function gcd(int, int1) {
  if (int === int1) { return int }
  
  var orderedNumbers = greatestAndSmallest(int, int1);
  var numerator = orderedNumbers[0];
  var denominator = orderedNumbers[1];

  quotient = Math.floor(numerator / denominator);
  remainder = numerator % denominator;
  if (remainder === 0) {
    return denominator;
  }

  return gcd(denominator, remainder);
}

console.log(gcd(12, 12));  // 12
console.log(gcd(48, 18));  // 6
console.log(gcd(12, 4));   // 4
console.log(gcd(15, 10));  // 5
console.log(gcd(9, 2));    // 1
console.log(gcd(2, 9));    // 1
console.log(gcd(36, 99));  // 9
console.log(gcd(gcd(12, 4), 8));  // 4)