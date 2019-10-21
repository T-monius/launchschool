// diamonds.js

const STAR = '*';
const SPACE = ' ';

var nStringArray = function nStringArray(n) {
  var arr = [];
  var i = 0;
  while (i < n) {
    arr.push('')
    i += 1;
  }
  return arr;
}

var nChars = function nChars(char, nTimes) {
  if (char === 'star' && nTimes === 1) { return STAR }
  var i = 0;
  var newStr = '';
  while(i < nTimes) {
    char === 'star' ? newStr += STAR : newStr += SPACE;
    i += 1
  }
  return newStr;
}

var diamond = function diamond(midpointStars) {
  var grid = nStringArray(midpointStars);
  var nstars = 1;
  var npaces = Math.floor((midpointStars - 1) / 2);
  var midpoint = Math.floor(midpointStars / 2);

  grid.forEach( function(currentStr, idx) {
    currentStr = nChars('space', npaces) + nChars('star', nstars) + nChars('space', npaces);
    if (idx < midpoint) {
      nstars += 2;
      npaces -= 1;
    } else {
      nstars -= 2;
      npaces += 1;
    }
    console.log(currentStr);
  });
};

diamond(1);
// logs
// *
diamond(3);
// logs
//  *
// ***
//  *
 diamond(9);
// logs
//     *
//    ***
//   *****
//  *******
// *********
//  *******
//   *****
//    ***
//     *