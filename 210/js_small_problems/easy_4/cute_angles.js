// cute_angles.js

function dms(decimalDegrees) {
  var degrees = String(Math.floor(decimalDegrees)).padStart(2, '0');
  var minutesAndSeconds = (decimalDegrees % 1) * 60;
  var minutes;
  var seconds;

  minutes = String(Math.floor(minutesAndSeconds)).padStart(2, '0');
  seconds = String(Math.round((minutesAndSeconds % 1)  * 60)).padStart(2, '0');

  return `${degrees}˚${minutes}'${seconds}"`;
}

console.log(dms(30));           // 30°00'00"
console.log(dms(76.73));        // 76°43'48"
console.log(dms(254.6));        // 254°35'59"
console.log(dms(93.034773));    // 93°02'05"
console.log(dms(0));            // 0°00'00"
console.log(dms(360));          // 360°00'00" or 0°00'00"