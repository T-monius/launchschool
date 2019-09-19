// get_day.js

var today = new Date();
var daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
var weekDay = today.getDay();

console.log(`Today's day is ${daysOfWeek[weekDay]}`)
//=> Something like "Today's day is 5"