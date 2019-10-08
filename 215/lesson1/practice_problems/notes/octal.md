## Practice Problem: Octal

### Understanding
- 'Decimal' here refers to base 10
- This may be a nice time to use `reduceRight`
  + We basically want to iterate elements from right to left and produce a final accumulated calculation.
- Input
  + String
  + base 8
- Output
  + A number
  + Decimal
- Functional abstractions
  + Map
  + Reduce (right)

### Task
- Write a Function named `octalToDecimal` that performs octal to decimal conversion. When invoked on a String that contains the representation of an octal number, the Function returns a decimal version of that value as a Number. Implement the conversion yourself: do not use something else to perform the conversion for you.
```js
function octalToDecimal(numberString) {
  // ...
}

octalToDecimal('1');           // 1
octalToDecimal('10');          // 8
octalToDecimal('130');         // 88
octalToDecimal('17');          // 15
octalToDecimal('2047');        // 1063
octalToDecimal('011');         // 9
```

### Implementation
- Convert the string to an array of string digits
- Transform the string digits to numbers
- Start the 'reduce' with an empty array
  + Multiply the element at iteration (digit of an octal representation) by the index at iteration to the Eighth
  + Add the number to the front of the array (accumulator)
- Join the new array of characters and convert to a Number

### Alternative Implementation
- ...