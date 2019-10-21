## Watch Others Code: Problem 4 - Short Hand Range

### Understanding
- Short Hand Range
  + List of numbers
  + Numbers are separated by different special characters: `'-'`, `':'`, `'..'`
    * These special characters have meaning
    * `-` show every number between these two
    * `:` also indicates 'filling' the range between two numbers
    * ',' means allow a gap or don't fill numbers
  + The numbers are always increasing from left to right
    * If a number repeats, then it must be at least ten more than the previous version of that number
    * We can think of numbers in series of 10?
      - Does this mental model help?
    * If there a number occurs which would otherwise be less than a previous number, it must belong to the 'series' of numbers 10 higher than the previous series.
      - This is indicated by prepending a number 1 higher than the previous series
      - We understand this implicitrly when comparing `2` and `12`; to represent ten and two we prepend a 1 to a 2
    * ^ this only works with ranges from 1-99
  + A numeber is a set of individual digits 
    * If a number string is shorter than the previous, prepend the leading remove the number of leading characters from the previous string necessary to make them the same length
      - ex, '545' to '65'
      - Add a '5' to '65' to compare the two
      - Programatically, take the larger string ('565') and subtract `'65.length'` characters from the end
        + Length of '565' minus the length of '65' gives us how many of it's leading characters we want
- Walking the range
  + If we are tracking from left to right and encounter a number less than a previous, we can prepend a numebr one greater than the previous prepended number
    * We prepend the same number to the next number until we again encounter a numebr less than it
  + Alternatively, it may be easier to consider 'adding' 10
    * This way there is less convoluded logic crossing from 10s to hundreds (e.g. "545, 64:11" --> 545, 564, 565, .. 611)
    * Add ten to a number if it's not greater than the previous
      - If still not, add 100?

  + Yet another Mental Model
    * From the base number add 1 until getting to a number that ends with the digit indicated by the next number in the range
    * Keep numbers in between if the separator is a colon or a dash
    * Discard the digits between the number at iteration if the separator is a comma

  + Even Further Mental Model
    * In order to increase a number that is currently smaller than the next, the length of both numbers needs to be taken into consideration
    * If the number is 1 digit long, we need to add 10 to it until it's bigger than the previous
    * If the number is 2 digits long, we need to add 100 to it until it's bigger than the previous


- Input
  + A string
  + Digits in a string
  + Special characters
- Output
  + Array
    * Number elements
  + What do the `..` before the last element of a couple of the example represent
    * In the first example, gaps were permitted between numbers
    * The `..` would lead one to believe every number between numbers should be represented

### Examples / Test Cases
```js
console.log(rangeFromShortHand("1, 3, 7, 2, 4, 1")) //--> [ 1, 3, 7, 12, 14, 21 ]
console.log(rangeFromShortHand("1-3, 1-2"))         //--> [ 1, 2, 3, 11, 12 ]
console.log(rangeFromShortHand("1:5:2"))            //--> [ 1, 2, 3, 4, 5, 6, ... 12 ]
console.log(rangeFromShortHand("104-2"))            //--> [ 104, 105, ... 112 ]
console.log(rangeFromShortHand("104-02"))           //--> [ 104, 105, ... 202 ]
console.log(rangeFromShortHand("545, 64:11"))       //--> [ 545, 564, 565, .. 611 ]
console.log(rangeFromShortHand("545, 64:1f1"))      //--> [0]
console.log(rangeFromShortHand("545, 64..11"))      //--> [ 545, 564, 565, .. 611 ]
console.log(rangeFromShortHand("64, 45:11"))        //--> 64, 145, 146, .. 211
```

### Data Structures
- Array
  + Numbers over strings?

### Implementation
- Functional Abstraction
  + Transformation
    * Changing a character representation of a digit at every iteration
- Algorithm
  + Separate the digits
  + Separate special characters
  + Map the digits
    * Derive the next number *FUNCTION*

          * Get a substring of the desired length from the string at iteration
          * Prepend it to the next element at iteration to get the next number
    * Either get all the numbers between it and the next and return *FUNCTION*
    * Or, simply return itself

- Hard algorithm
  + Return empty array if the string contains characters that are invalid
    * Not digit, comma and space, dash, or two dots
  + Set the digits to an array by matching a regex to digits
  + Assign the special characters to an array by matching a regex (to non-digits)
  + Map the digits array
    * Derive the 'next number' and set it to a variable
      - Access the subsequent digit by adding 1 to the current index
      - Pass it to `nextNumber`
    * Access the separator at current index (maybe index plus 1)
      - If it's a range character (in a group of regex)
        + Iterate and push every number between the current number and the next to an array and return it
      - Else just return the next number
  + Flatten the return of map and return

  + `nextNumber`
    * Input
      - current number at iteration
      - The next element in the digits array (current index plus 1)
      - Convert the input elements to numbers
      - If the next element is currently greater than the current
        + Return it
      - Derive the number to add to the next element to make it greater (Function?)
        + Determine the length of the next element
        + Add zeros according to its length to the string `'1'` and convert it to a number
      - Add the derived number to the element until it's greater than the current element

### Task
- You are given a list of numbers in a "short-hand" range where only the significant part of the next number is written because we know the numbers are always increasing (ex. "1, 3, 7, 2, 4, 1" represents [1, 3, 7, 12, 14, 21]). Some people use different separators for their ranges (ex. "1-3, 1-2", "1:3, 1:2", "1..3, 1..2" represent the same numbers [1, 2, 3, 11, 12]). Range limits are always inclusive.

- Your job is to return a list of complete numbers.

- The possible separators are: ["-", ":", ".."]

  + "1, 3, 7, 2, 4, 1" --> 1, 3, 7, 12, 14, 21
  + "1-3, 1-2" --> 1, 2, 3, 11, 12
  + "1:5:2" --> 1, 2, 3, 4, 5, 6, ... 12
  + "104-2" --> 104, 105, ... 112
  + "104-02" --> 104, 105, ... 202
  + "545, 64:11" --> 545, 564, 565, .. 611