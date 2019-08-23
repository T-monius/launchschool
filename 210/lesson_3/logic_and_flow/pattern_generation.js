// pattern_generation.js

function generatePattern(n) {
  var row = '';
  for (var rowNumber = 1; rowNumber <= n; rowNumber += 1) {
    for (var intChar = 1; intChar <= rowNumber; intChar += 1) {
      row += intChar;
    }

    for (var asterisks = 0; asterisks < n - rowNumber; asterisks += 1) {
      row += '*';
      if (n > 9) {
        var extraAsterisks = n - 9;
      }
    }
    console.log(row);
    row = '';
  }
}

generatePattern(7);