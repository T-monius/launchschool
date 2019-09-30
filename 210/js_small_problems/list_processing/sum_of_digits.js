// sum_of_digits.js

const sum = function sumDigits(num) {
  let digitsArray = Array.from(String(num), (char) => Number(char));
  return digitsArray.reduce( (total, int) => total + int );
};

console.log(sum(23));           // 5
console.log(sum(496));          // 19
console.log(sum(123456789));    // 45