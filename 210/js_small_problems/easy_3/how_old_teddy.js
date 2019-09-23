// how_old_teddy.js

function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min; //The maximum is inclusive and the minimum is inclusive 
}

age = getRandomIntInclusive(20, 200);

console.log(`Teddy is ${age} years old!`)