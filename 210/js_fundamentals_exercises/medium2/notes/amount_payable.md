## Amount Payable

### Task
- What does the following code log? Why is this so?

```js
var startingBalance = 1;
var chicken = 5;
var chickenQuantity = 7;

var totalPayable = function (item, quantity) {
  return startingBalance + (item * quantity);
};

startingBalance = 5;
console.log(totalPayable(chicken, chickenQuantity));

startingBalance = 10;
console.log(totalPayable(chicken, chickenQuantity));
```

- After Hoisting
```js
var totalPayable = function (item, quantity) {
  return startingBalance + (item * quantity);
};

var startingBalance;
var chicken;
var chickenQuantity;

startingBalance = 1;
chicken = 5;
chickenQuantity = 7;

startingBalance = 5;
console.log(totalPayable(chicken, chickenQuantity));

startingBalance = 10;
console.log(totalPayable(chicken, chickenQuantity));
```

### Understanding
- Our starting balance will be reassigned to `5` before the first log call.
  + `5 + (5 * 7)` in the function
  + Outputs `40`
- `startingBalance` is reassigned to `10` before the second log.
  + `10 + (5 * 7)`
  + Outputs `45`