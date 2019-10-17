## Watch Others Code: Problem 2 - The Luhn Formula

### Understanding
- Luhn Formula: checksum
  + End result should be a multiple of 10
  + 
- Input
  + A string
    * Contains some number characters
    * Non-digits are irrelevant
- Output
  + Boolean
- Transformation requirements
  + Double every number
    * If the value surpasses 10 after doubling, subract 9

- Questions
  + Is the output indeed boolean, or should it output something else
  + Should I account for a number appended?
  + How should I handle non-string inputs

#### Examples / Test Cases
- Generic Cases:
  + The input is a checksum
  + The input is not a checksum
- Egdge Cases
  + Invalid input: number, object, anything non-string
  + 
```js
console.log(isLuhn('1111'))                   //=> true
console.log(isLuhn('8763'))                   //=> false
console.log(isLuhn("2323 2005 7766 3554"))    //=> true
```

### Data Structure
- String
- Array
  + Number
- String

### Implementation / Algorithm
- Functional Abstraction
  + Map
  + Reduce
  + Interrogation
- Strip non-digit characters
  * Can use a regex
- Convert to an array of digits
- Map to numbers
- Map to the 'doubled Form'
- Reduce to the total
- Return true if the total is a multiple of ten
  * Test with remainder operator

### Task
- The Luhn formula is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers Canadian Social Insurance Numbers.

- The formula verifies a number against its included check digit, which is usually appended to a partial number to generate the full number. This number must pass the following test:

  + Counting from the rightmost digit and moving left, double the value of every second digit
  + For any digit that thus become 10 or more, subtract 9 from the reuslt
    * 1111 becomes 2121
    * 8763 becomes 7733 (from 2 x 6 = 12 -> 12 - 9 = 3 and 2 x 8 = 16 -> 16 - 9 = 7)
  + Add all these digits together
    * 1111 becomes 2121 sums as 2 + 1 + 2 + 1 to give a checksum of 6
    * 8763 becomes 7733, and 7 + 7 + 3 + 3 is 20

- If the total (the checksum) ends in 0 (put another way, if the total modulus 10 is congruent to 0), then the number is valid according to the Luhn Formula; else it is not valid. So, 1111 is not valid (as shown above, it comes out to 6), while 8763 is valid (as shown above, it comes out to 20).

- Write a program that, given a number in string format, check if it is valid per the Luhn formula. This should treat, for example, "2323 2005 7766 3554" as valid. You can ignore all non-numeric characters in the input string.

#### Additional Understanding
- The `isLuhn` function can return true or false
  + This is based on the `sum` variable being a multiple of 10
- Input
  + A numebr
- Output
  + Return a number as is if it's 'Luhn'
  + Change the number if it's no by appending a 'checkdigit'

##### Implementation
- Functional Abstraction
  + Interrogation
  + Single operation math
- Extract sum logic
  + Have the `isLuhn` function call the checksum
  + If a number called by `makeLuhn` is not 'luhn', append zero and store the sum
  + User `checkDigit` to derive a new number
    * Add this number to the original number instead of `0`
- `checkDigit`
  + Return 10 minus the input `%` (remainder) 10

#### Additional Task
- Write a function that can add a check digit to make the number valid per the Luhn formula and return the original number plus that digit. this should give "2323 2005 7766 3554" in response to "2323 2005 7766 3554"