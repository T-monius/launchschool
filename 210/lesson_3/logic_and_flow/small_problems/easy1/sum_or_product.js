// sum_or_product.js

var int = Number(prompt('Please enter an integer greater than 0: '));
var operation = prompt('Enter "s" to compute the sum, or "p" to compute the product. ');
var total = operation === 's' ? 0 : 1;

for (var i = 1; i <= int; i += 1) {
  if (operation === 's') {
    total += i;
  } else if (operation === 'p') {
    total *= i;
  }
}

var operationType = operation === 's' ? 'sum' : 'product';
console.log(`The ${operationType} of the integers between 1 and ${int} is ${total}.`);