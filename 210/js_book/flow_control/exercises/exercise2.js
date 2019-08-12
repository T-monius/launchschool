// exercise2.js

function evenOrOdd(int) {
  if (!(Number.isInteger(int))) {
    console.log('The argument must be an integer.')
    return
  }
  if (int % 2 === 0 ) {
    console.log('even');
  } else {
    console.log('odd')
  }
}

evenOrOdd(3);
evenOrOdd(4);
evenOrOdd('fart');
