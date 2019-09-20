## Multiplication Table

### Understanding
- If the program is meant to log multiplication of every integer from `1` to `10` inclusive by all numbers from `1` to `10` inclusive, it will not display the expected result.
  + Iteration for `i` stops with 9 since iteration continues while `i` is less than `10` and not equal to `10`  

### Task
- The following program is expected to log a multiplication table for the numbers from `1` to `10` to the console. Read through the code shown below. Will it produce the expected result? Why or why not?

```js
var row;
var i;
var j;

function padLeft(number) {
  var stringNumber = String(number);
  return stringNumber.length <= 1 ? ' ' + stringNumber : stringNumber;
}

for (i = 1; i < 10; i += 1) {
  row = '';
  for (j = 1; j <= 10; j += 1) {
    row += padLeft(i * j) + ' ';
  }

  console.log(row + '\n');
}
```