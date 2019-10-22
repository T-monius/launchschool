// triAngle.js

const isValid = function isValid(anglesArray) {
  return (anglesArray.reduce( (acc, currentAngle) => acc + currentAngle) === 180)
  && anglesArray.every( (angle) => angle > 0)
}

const triangle = function triangle(angle1, angle2, angle3) {
  let allAngles = [angle1, angle2, angle3];
  if (!isValid(allAngles)) return 'invalid';
  if (allAngles.some( (angle) => angle === 90)) return 'right';
  if (allAngles.every( (angle) => angle < 90)) return 'acute';
  if (allAngles.some( (angle) => angle > 90)) return 'obtuse';
  return 'invalid';
}

console.log(triangle(60, 70, 50));       // "acute"
console.log(triangle(30, 90, 60));       // "right"
console.log(triangle(120, 50, 10));      // "obtuse"
console.log(triangle(0, 90, 90));        // "invalid"
console.log(triangle(50, 50, 50));       // "invalid"