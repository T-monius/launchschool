// problem5.js

var exampleArr = ['Jim', 34, 'Bob', 'Rob', 18, 'Sam'];
var exampleArr1 = [1, 'a', 4];

function concatenator(arr) {
  var mushedUpString = '';
  var stringValue;
  for (var i = 0; i < arr.length; i += 1) {
    stringValue = String(arr[i]);
    mushedUpString += stringValue;
  }
  return mushedUpString;
}

console.log(concatenator(exampleArr1));   // '1a4'
console.log(concatenator(exampleArr));    //  'Jim34BobRob18Sam'