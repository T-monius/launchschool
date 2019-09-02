// room_size.js

var length;
var width;
var area;

length = prompt('Enter the length of the room in meters:');
width = prompt('Enter the width of the room in meters:');
area = length * width;

console.log(`The area of the room is ${area} square meters (${area * 10.7639} square feet).`)