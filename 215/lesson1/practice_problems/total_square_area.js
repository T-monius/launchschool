// total_square_area.js

var totalSquareArea = function totalSquareArea(dimensionsArrays) {
  return dimensionsArrays.filter( function(innerArray) {
    return innerArray[0] === innerArray[1];
  }).map( function(rectangle) {
    return rectangle[0] * rectangle[1];
  }).reduce( function(totalOfAreas, currentArea) {
    return totalOfAreas + currentArea;
  })  
}

var rectangles = [[3, 4], [6, 6], [1, 8], [9, 9], [2, 2]];

console.log(totalSquareArea(rectangles));    // 121