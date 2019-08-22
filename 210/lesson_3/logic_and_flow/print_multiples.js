// print_multiples.js

function logMultiples(int) {
  for (var i = 99; i >= 1; i -= 2) {
    if (i % int === 0) {
      console.log(i)
    }
  }
}

logMultiples(17);
console.log('');
logMultiples(21);

// Further Expolration
function logMultiplesFE(int) {
  var largestMultiple = Math.floor(100 / int) * int;
  for (var i = largestMultiple; i >= int; i -= int) {
      if (i % 2 === 1) {
        console.log(i);
      }
    }
}

console.log('Further Expolration')
logMultiplesFE(17);
console.log('');
logMultiplesFE(21);