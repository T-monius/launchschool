// lettercasePercent.js

var convertToPercent = function convertToPercent(count, len) {
  return String(((count / len) * 100).toFixed(2));
};

var letterPercentages = function letterPercentages(str) {
  var percentages = { uppercase: 0, lowercase: 0, neither: 0 };
  Array.from(str)
       .forEach( function(char) {
         if (char > 'A' && char < 'Z') {
           percentages.uppercase += 1;
         } else if (char > 'a' && char < 'z') {
           percentages.lowercase += 1;
         } else {
           percentages.neither += 1;
         }
       });
  Object.keys(percentages)
        .forEach( function(lettercase) {
          percentages[lettercase] = convertToPercent(percentages[lettercase], str.length)
        });
  return percentages;
};

console.log(letterPercentages('abCdef 123'));
// { lowercase: "50.00", uppercase: "10.00", neither: "40.00" }

console.log(letterPercentages('AbCd +Ef'));
// { lowercase: "37.50", uppercase: "37.50", neither: "25.00" }

console.log(letterPercentages('123'));
// { lowercase: "0.00", uppercase: "0.00", neither: "100.00" }