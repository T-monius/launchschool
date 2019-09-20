// next_week.js

var today = new Date();
var nextWeek = new Date(today.getTime());

console.log(today === nextWeek);

var todayString = today.toDateString();
var nextWeekString = nextWeek.toDateString();

console.log(todayString);
console.log(nextWeekString);
console.log(todayString === nextWeekString);

var sevenDays = nextWeek.getDate() + 7;
nextWeek.setDate(sevenDays);
nextWeekString = nextWeek.toDateString();

console.log(todayString);
console.log(nextWeekString);
console.log(todayString === nextWeekString);