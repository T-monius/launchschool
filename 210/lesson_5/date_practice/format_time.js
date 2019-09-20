// format_time.js

function formatTime(date) {
  var hrs = String(date.getHours());
  var mins = String(date.getMinutes());

  if (hrs.length === 1) {
    hrs = '0' + hrs;
  }
  if (mins.length === 1) {
    mins = '0' + mins;
  }

  return `${hrs}:${mins}`;
}

var event = new Date(1993, 6, 28, 14, 39, 7);
var now = new Date();

console.log(formatTime(event));               // '14:39'
console.log(formatTime(now));                 // '06:58'