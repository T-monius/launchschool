// multiples_3_5.js

function multiplesOfThreeAndFive() {
  for (var i = 1; i <= 100; i += 1) {
    if ((i % 3 === 0) && (i % 5 === 0)) {
      console.log(String(i) + '!');
    } else if ((i % 3 === 0) || (i % 5 === 0)) {
      console.log(String(i));
    }
  }
}

multiplesOfThreeAndFive();

// Further Exploration
function multiplesOfThreeAndFiveFE(min=1, max=100) {
  for (var i = min; i <= max; i += 1) {
    if ((i % 3 === 0) && (i % 5 === 0)) {
      console.log(String(i) + '!');
    } else if ((i % 3 === 0) || (i % 5 === 0)) {
      console.log(String(i));
    }
  }
}

multiplesOfThreeAndFiveFE(102, 140);