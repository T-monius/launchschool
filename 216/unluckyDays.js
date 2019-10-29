// unluckyDays.js

var deriveThirteenths = function deriveThirteenths(yr) {
  var dates = [];
  var i;
  for (i = 0; i < 11; i += 1) {
    dates.push(new Date(yr, i, 13))
  }
  return dates;
};

var fridayThe13ths = function fridayThe13ths(yr) {
  if (yr < 1752) return -1
  var dates = deriveThirteenths(yr);
  return dates.map( function(date) {
                return date.getDay();
              })
              .filter( function(weekday) {
                return weekday === 5;
              })
              .length;
};

console.log(fridayThe13ths(1986));      // 1
console.log(fridayThe13ths(2015));      // 3
console.log(fridayThe13ths(2017));      // 2
console.log(fridayThe13ths(1702));      // -1