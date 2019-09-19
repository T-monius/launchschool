// get_month.js

var today = new Date();
var daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
var thisMonth = months[today.getMonth()];
var weekDay = today.getDay();
var calendarDate = today.getDate();

function dateSuffix(num) {
  var stringNum = String(num);
  var len = stringNum.length;
  if (num === 11 || num === 12 || num === 13) {
    return stringNum += 'th';
  }

  switch (stringNum[len - 1]) {
    case '1':
      stringNum += 'st';
      break;
    case '2':
      stringNum += 'nd';
      break;
    case '3':
      stringNum += 'rd';
      break;
    default:
      stringNum += 'th';
  }

  return stringNum;
}

console.log(`Today's day is ${daysOfWeek[weekDay]}, ${thisMonth} ${dateSuffix(calendarDate)}`);