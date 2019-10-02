## Shop Transactions

### Understanding
- 3 Concerns
  + Log
    * Gain or loss
    * Input accepts negative values
  + Validate
  + Total
- `processInput`
- `logTransaction`
- `transactionTotal`
- The three tasks seems to be working properly with the test inputs I used
  + The program appropriately handles negative inputs
  + Perhaps formatting any trailing zeros for decimals in the output could be a problem

### Task
- Todd wrote some simple code in an attempt to log his shop's financial transactions. Each time he makes a sale or spends money on inventory, he logs that deposit or withdrawal via the `logTransaction` function. His code also intends to ensure that each transaction logged is a valid numerical amount. At the end of each day, he displays his total gain or loss for the day with `transactionTotal`.

- Test out the code yourself. Can you spot the problem and fix it?


### LS Fix
- It seems that I didn't think to try enough edge cases
  + What if the user inputs a non-number
  + The code works, the error message intended to be displayed is not displayed
    * `catch` needs to be passed the erroe
    * This is a very subtle bug.

```js
var transactionLog = [];

function processInput(input) {
  var numericalData = parseFloat(input);

  if (isNaN(numericalData)) {
    throw (new Error('Data could not be converted to numerical amount.'));
  }

  return numericalData;
}

function logTransaction() {
  var data = prompt('Please enter the transaction amount: ');

  try {
    data = processInput(data);
    transactionLog.push(data);

    alert('Thank you. Data accepted.');
  } catch {
    alert(error.message);
  }
}

function transactionTotal() {
  var total = 0;
  var i;

  for (i = 0; i < transactionLog.length; i++) {
    total += transactionLog[i];
  }

  return total;
}

logTransaction();
logTransaction();
logTransaction();

console.log(transactionTotal());
```
