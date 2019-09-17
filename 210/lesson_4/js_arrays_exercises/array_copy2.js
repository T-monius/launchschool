// array_copy2.js

var myArray = [1, 2, 3, 4];
var myOtherArray = myArray.slice();
var myOtherOtherArray = [...myArray];

myArray.pop();
console.log(myOtherArray);
console.log(myOtherOtherArray);

myArray = [1, 2];
console.log(myOtherArray);
console.log(myOtherOtherArray);