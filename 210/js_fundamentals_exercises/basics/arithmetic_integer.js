// arimetic_integer.js

/* In this program we're going to explore the basic arithmetic operations in
   JavaScript. The program below prompts the user for two positive integers,
   then logs the results of the following operations on those two numbers:
   addition, subtraction, product, quotient, remainder, and power. For this
   exercise, assume positive integers as inputs.

Here are our expected results after running the program:

Enter the first number: 23
Enter the second number: 17

23 + 17 = 40
23 - 17 = 6
23 * 17 = 391
23 / 17 = 1
23 % 17 = 6
23 ** 17 = 1.4105003956066297e+23
Here is the code for the program:
*/

var number1 = Number(prompt('Enter the first number:'));
var number2 = Number(prompt('Enter the second number:'));

console.log(number1 + ' + ' + number2 + ' = ' + (number1 + number2));
console.log(number1 + ' - ' + number2 + ' = ' + (number1 - number2));
console.log(number1 + ' * ' + number2 + ' = ' + (number1 * number2));
console.log(number1 + ' / ' + number2 + ' = ' + Math.floor(number1 / number2));
console.log(number1 + ' % ' + number2 + ' = ' + (number1 % number2));
console.log(number1 + ' ** ' + number2 + ' = ' + Math.pow(number1, number2));

/* Did the results of the program match what we expected? Why or why not? If
   not, can you fix it?
   No. It concatenates the strings with addition then has some errors with
   the other arithmetic operators.
   Fix:
   Convert the string input to numbers before performing operations.
*/