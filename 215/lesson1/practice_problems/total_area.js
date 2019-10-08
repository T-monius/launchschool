// total_square_area.js

var totalArea = function totalArea(dimensions) {
  return dimensions.map( function(rectangle) {
    return rectangle[0] * rectangle[1];
  }).reduce( function(totalOfAreas, currentArea) {
    return totalOfAreas + currentArea;
  })
}

var rectangles = [[3, 4], [6, 6], [1, 8], [9, 9], [2, 2]];

console.log(totalArea(rectangles));    // 141