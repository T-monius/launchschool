## Alphabetical Numbers

### Understanding
- List Processing
  + Use an array
- Write a fucntion (named function expression per AirBnb guide)
- Input
  + Array
  + Integers
    * `0` to `19`
- Output
  + Array
  + Integers
    * Sorted by english name
- Sorting in JS is not straight forward
  + Sorts in place
    * Based on string UTF-16
      - This is beneficial in our use here because we will be sorting by strings for the English term
    * Need to make a copy in the method to avoid side-effects

### Task
- Write a function that takes an array of integers between `0` and `19`, and returns an array of those integers sorted based on the English word for each number:

- zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

### Implementation
- Create a reference
  + Object
  + Map integer properties to string word values
- Set a variable to the mapped integers to their English terms
- Sort the array of english terms
- Return the sorted terms mapped back to their digit integer form
  + Write a function to invert a hash
  + Invert our dictionary and set to a variable
  + Map the terms array to the numbers and Return

#### Alternatively Implementation
- Use an array instead of a hash since the indexes map to numbers anyway. No need to invert hash.
- Reference array
- Map the input
  + Set a variable to store accessing the reference for each value at index
- Sort the array of English terms
- Map the terms array
  + Find index of the term in the reference array
  + Return