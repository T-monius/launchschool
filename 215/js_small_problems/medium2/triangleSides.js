// triangleSides.js

var triangle = function triangle(side1, side2, side3) {
  var sides = [side1, side2, side3].sort((a, b) => a - b);
  if (sides.some( (element) => element === 0)) return 'invalid';
  if (sides[0] + sides[1] <= sides[2]) return 'invalid';
  if (side1 === side2 && side2 === side3) return 'equilateral';
  if ((side1 === side2)
      || (side1 === side3)
      || (side2 === side3)) return 'isosceles';
  return 'scalene';
}

console.log(triangle(3, 3, 3));        // "equilateral"
console.log(triangle(3, 3, 1.5));      // "isosceles"
console.log(triangle(3, 4, 5));        // "scalene"
console.log(triangle(0, 3, 3));        // "invalid"
console.log(triangle(3, 1, 1));        // "invalid"