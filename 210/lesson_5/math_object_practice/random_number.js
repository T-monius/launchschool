// random_number.js

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min; //The maximum is inclusive and the minimum is inclusive 
}

console.log(getRandomIntInclusive(4, 11));
console.log(getRandomIntInclusive(11, 4));