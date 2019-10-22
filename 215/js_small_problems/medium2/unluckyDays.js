// unluckyDays.js

const fridayThe13ths = function fridayThe13ths(year) {
  let thirteenthsEachMonth = [];
  var i;

  for (i = 0; i <= 11; i += 1) {
    thirteenthsEachMonth.push(new Date(year, i, 13));
  }
  return thirteenthsEachMonth.map((date) => date.getDay())
                             .filter( (weekday) => weekday === 5)
                             .length
};

console.log(fridayThe13ths(1986));      // 1
console.log(fridayThe13ths(2015));      // 3
console.log(fridayThe13ths(2017));      // 2