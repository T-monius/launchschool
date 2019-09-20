// tomorrow.js

var today = new Date();
var tomorrow = new Date(today.getTime());
var nextDay = today.getDate() + 1;

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

function formattedMonth(date) {
  var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  var month = months[date.getMonth()];
  return month;
}

function formattedDay(date) {
  var daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  var day = date.getDay();
  return daysOfWeek[day];
}

function formattedDate(date) {
  var weekDay = formattedDay(date);
  var calendarDate = today.getDate();
  
  return `Today's day is ${weekDay}, ${formattedMonth(date)} ${dateSuffix(calendarDate)}`;
}

tomorrow.setDate(nextDay);
console.log(formattedDate(today));
console.log(formattedDate(tomorrow));