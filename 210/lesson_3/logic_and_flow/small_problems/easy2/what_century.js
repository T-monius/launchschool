// what_century.js

function century(yr) {
  var centuryNum = Math.ceil(yr / 100);
  return appendCenturySuffix(centuryNum);
}

function appendCenturySuffix(centuryNum) {
  var centuryStr = String(centuryNum);
  var lastTwoDigits = centuryNum % 100;
  var lastDigit = centuryNum % 10;
  if (lastTwoDigits >= 11 && lastTwoDigits <= 13) {
    return centuryStr += 'th';
  } else if (lastDigit === 1) {
    return centuryStr += 'st';
  } else if (lastDigit === 2) {
    return centuryStr += 'nd';
  } else if (lastDigit === 3) {
    return centuryStr += 'rd';
  } else {
    return centuryStr += 'th';
  }
}

console.log(century(2000));        // "20th"
console.log(century(2001));        // "21st"
console.log(century(1965));        // "20th"
console.log(century(256));         // "3rd"
console.log(century(5));           // "1st"
console.log(century(10103));       // "102nd"
console.log(century(1052));        // "11th"
console.log(century(1127));        // "12th"
console.log(century(11201));       // "113th"