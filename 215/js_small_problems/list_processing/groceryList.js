// groceryList.js

var multiplyItems = function multiplyItems(item, times) {
  var itemRepeated = [];
  var i;
  for (i = 0; i < times; i += 1) {
    itemRepeated.push(item);
  }
  return itemRepeated;
}

var buyFruit = function buyFruit(list) {
  return list.map( function(itemWithCount) {
    var item = itemWithCount[0];
    var count = itemWithCount[1];
    return multiplyItems(item, count);
  }).flat();
}

console.log(buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]));
// returns ["apple", "apple", "apple", "orange", "banana", "banana"]