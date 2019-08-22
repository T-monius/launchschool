// odd_numbers.js

function logOddNumbers(int) {
  for(var iterator = 1; iterator <= int; iterator += 1) {
    if (iterator % 2 === 1) { console.log(iterator) };
  }
}

logOddNumbers(19);

// Further Exporation
function logOddNumbersFE(int) {
  for(var iterator = 1; iterator <= int; iterator += 2) {
    console.log(iterator)
  }
}

logOddNumbersFE(19);

function logOddNumbersFE1(int) {
  for(var iterator = 1; iterator <= int; iterator += 1) {
    if (iterator % 2 === 0) {
      continue;
    } else { 
      console.log(iterator);
    }
  }
}

logOddNumbersFE1(19);