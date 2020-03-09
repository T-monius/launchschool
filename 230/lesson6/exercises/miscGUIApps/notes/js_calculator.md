## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > A JavaScript Calculator

### Task
- Build A GUI standard calculator

- Specifications
  + Calculator screen
    * The calculator should have a screen like a standard calculator.
    * The screen should have two parts:
      1. A lower part—the entry window—that shows the current entry: the number you are entering or the most recent result.
      2. An upper part—the operation window—that shows the operation in progress, e.g., 1 + 5 / 2 +.
  + Calculator buttons
    * All digits: 0-9
    * +, -, /, `*`, %, =, NEG, C, CE
    * The `NEG` button negates the value in the entry window.
    * The `CE` button clears the entry window and replaces it with 0.
    * The `C` button clears both the entry and operation windows and leaves a value of `0` in the entry window.
  + Operations
    * When the user clicks a digit button, append the digit to the number in the entry window. If the value in the entry window is `0`, replace the `0` with the entered digit.
    * When the user clicks an operator button, copy the current entry and the operator into the operation window. You can leave the current entry in the entry window or set it to `0`, but, either way, the next digit entered should begin a new number.
    * When the user clicks the = button, use the current operation and the current entry to calculate the final result. Clear the current operation window and display the result in the entry window.

### Understanding
- Create a calculator
  + Values
  + Operations

### Data Structures
- String (for inputs)
- Array, parsed inputs
  + Numbers

### Implementation
- Markup
  + Calculator, main
  + Screen, section
    * Templates
    * Upper and lower screen
  + Inputs, section
    * Static inline-block button elements
- Click handlers
  + 3 Hanlders
  + Values, operations, operators
    * Push values and operators to display
    * Perform operation for operations (`CE`, `C`, `NEG`, `=`)
    * `=`, calculate
  + If a calculation is performed, output its result as the current value
- Keep track of an input string to display
- Display the current input
  + Track previous input
  + Track current input
    * If previous input and current input are digits, push the current digit to the input string with no space
    * Else, push a space then the current digit
- Calculating
  + Split the input stream (String) by space
  + Iterate
    * `splice` three values from split array
    * Perform the operation conditionally (maybe a switch)
    * `unshift` the result to the `stream` Array
    * `break` on Array length with caveates.
