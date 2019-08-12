// factorial.js

function times(number1, number2) {
  let result = number1 * number2;
  console.log(result);
  return result;
}

let num = times(1, 1);
num = times(num, 2);
num = times(num, 3);
num = times(num, 4)
times(num, 5);
