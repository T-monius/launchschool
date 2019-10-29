// simpleTimeDifference.js

var solve = function solve(times) {
  if (times.length < 1) return 'invalid';
  var dates;
  var intervals;
  var currentElement;
  var nextElement;
  var i;
  dates = times.map( function (time) {
                     [hours, minutes] = time.split(':');
                     return Number(hours) * 60 + Number(minutes);
                   })
                   .sort( (minutes, minutes1) => minutes - minutes1);

  intervals = [];
  for (i = 0; i < dates.length - 1; i += 1) {
    currentElement = dates[i];
    nextElement = dates[i + 1];
    intervals.push(nextElement - currentElement);
  }
  return intervals.reduce( function(previousMax, currentInterval) {
    return previousMax > currentInterval ? previousMax : currentInterval;
  }, 0);
};

// solve(["14:51"]) === "23:59" // . If the alarm goes off now, it will not go off for another 23 hours and 59 minutes.
console.log(solve(["23:00","04:22","18:05","06:24"]))  // === "11:40" // . The max interval that the alarm will not go off is 11 hours and 40 minutes.

console.log(solve(["21:14", "15:34", "14:51", "06:25", "15:30"])) // === "09:10"

console.log(solve([])) // === "invalid"