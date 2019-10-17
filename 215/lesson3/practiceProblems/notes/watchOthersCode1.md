## What Others Code: Problem 1 - Phone Numbers

### Understanding
- Input
  + string
    * May contain special characters
      - space
      - dots
      - dashes
      - parentheses
      - Plus sign
  + Numbers
    * Acceptable input has 10 or 11 digits
    * If the first digit is a 1, and the total digits are 11, then 11 is valid
      - Else 11 digits is not valid
- Output
  + String
    * Represents valid 10 digits
    * Ten zeros for bad inputs
- Questions/Concerns
  + What do I do with special characters that are not of the above?
    * Consider the input as invalid
  + String return?
    * Could alternatively return the digits as a number
    * Assume we return a string of digits only
    * Else ten `'0'`

#### Data Structures
- String

#### Algorithm
- Functional Abstraction
  + Interrogation
  + Filter
  + Iterative / Recusively

### Implementation
- Breakdown
  + Set a string for return
  + Iterate the input string
    * If a digit at iteration is `'0-9'` add it to the return string
  + If the return string is less than 10 or greater than 11
    * Return ten '0'
  + Else If
    * string is 11 digits
    * Return it if the first character is `'1'` else 10 zeros
  + Else return the 10 digit string

### Examples / Test Cases
- Generic cases
  + Valid special characters and either 10 or 11 digits
    * Leading digit is a 1 if 11 digits
- Edge Cases
  + More than 11 digits
  + Less than 10 digits
```js
var cleanPhoneNumber = function cleanPhoneNumber(userString) {
  // ...
};

console.log('+1(720) 361-8422')       //=> '7203618422'
console.log('(303) 841-8672')         //=> '3038418672'
console.log('123-456789-10')          //=> '0000000000'
console.log('(561) 422-16')           //=> '0000000000'
console.log('')                       //=> '0000000000'
````

### Task
- Write a program that cleans up user-entered phone numbers so that they can be sent as SMS messages. Other than digits, the number may also contain special character such as spaces, dash, dot, and parentheses that should be ignored.

- The rules are as follows:
  + If the phone number is less than 10 digits, assume that it is a bad number.
  + If the phone number is 10 digits, assume that it is good.
  + If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits.
  + If the phone number is 11 digits and the first number is not 1, then it is a bad number.
  + If the phone number is is more than 11 digits, assume that it is a bad number.
- For bad numbers, just a return a string of 10 0s.
