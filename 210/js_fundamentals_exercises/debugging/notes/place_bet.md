## Place A Bet

### Understanding
- `placeABet`
  + Input
    * Integer
  + Output
- `generateRandomInt`

### Current Implementation
- __Bug__ `generateRandomInt()` is intended to be written as a function expression but it's not stored

### Cause
- The function `generateRandomInt()` is not accessible to be evoked since it is offset in parentheses.
  + The intent would likely be to create a function expression in which case it needs to be assigned to a variable to be invoked.
  + The variable can have the same name as the Function named and stored in it.
  + Otherwise, the Function can be declared without the parentheses creating a 'Function Declaration' thereby creating the function and a variable within the scope of the `placeABet` function.

### Task
- The function `placeABet` below accepts a guess from the user between 1 and 25. The function should determine a winning number and return a message to the user indicating whether he/she entered a winning guess. When you try to invoke `placeABet`, an error is raised. Fix the bug and explain what caused it.
```js
function placeABet(guess) {
  (function generateRandomInt() {
    return Math.floor(Math.random() * 25) + 1;
  });

  var winningNumber = generateRandomInt();

  if (guess < 1 || guess > 25) {
    return 'Invalid guess. Valid guesses are between 1 and 25.';
  }

  if (guess === winningNumber) {
    return "Congratulations, you win!";
  } else {
    return "Wrong-o! You lose.";
  }
}

var userGuess = parseInt(prompt('Input a guess between 1-25'), 10);
alert(placeABet(userGuess));
```