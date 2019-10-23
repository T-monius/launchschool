// seeingStars.js

var star = function star(n) {
  var middleIndex = Math.floor(n / 2);
  var i;
  var prependedSpaces = 0;
  var inBetweenSpaces = middleIndex - 1;

  for (i = 0; i < n; i += 1) {
    if (i < middleIndex) {
      console.log(`${' '.repeat(prependedSpaces)}*${' '.repeat(inBetweenSpaces)}*${' '.repeat(inBetweenSpaces)}*`);
      prependedSpaces += 1;
      inBetweenSpaces -= 1;
    } else if (i === middleIndex) {
      console.log(`${'*'.repeat(n)}`);
      prependedSpaces -= 1;
      inBetweenSpaces += 1;
    } else {
      console.log(`${' '.repeat(prependedSpaces)}*${' '.repeat(inBetweenSpaces)}*${' '.repeat(inBetweenSpaces)}*`);
      prependedSpaces -= 1;
      inBetweenSpaces += 1;
    }
  }
};

star(7);
// logs
// *  *  *
//  * * *
//   ***
// *******
//   ***
//  * * *
// *  *  *

star(9);
// logs
// *   *   *
//  *  *  *
//   * * *
//    ***
// *********
//    ***
//   * * *
//  *  *  *
// *   *   *

star(11)
// *    *    *
//  *   *   *
//   *  *  *
//    * * *
//     ***
// ***********
//     ***
//    * * *
//   *  *  *
//  *   *   *
// *    *    *