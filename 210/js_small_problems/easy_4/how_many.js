// how_many.js

function getCounts(arr) {
  var counts = {};
  for (var i = 0; i < arr.length; i += 1) {
    counts[arr[i]] ? counts[arr[i]] += 1 : counts[arr[i]] = 1
  }
  return counts;
}

function countOccurrences(arr) {
  var counts = getCounts(arr);
  var vehicles = Object.keys(counts);
  vehicles.forEach( vehicle => console.log(`${vehicle} => ${counts[vehicle]}`))
}

var vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
                'motorcycle', 'motorcycle', 'car', 'truck'];

countOccurrences(vehicles);

// console output
// car => 4
// truck => 3
// SUV => 1
// motorcycle => 2