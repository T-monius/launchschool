## Watch Others Code - Problem 3

### Understanding
- Input
  + String
  + Case insensitive
- Output
  + Boolean
- Knowledge
  + The 'blocks' are two letter pairs of letters
  + A block can only be used once
    * Cannot use the same letter twice
    * Cannot use a letter that shares a 'block'/pair with another

### Examples/Test Cases
- Examples:
```js
isBlockWord('BATCH');      // true
isBlockWord('BUTCH');      // false
isBlockWord('jest');       // true
isBlockWord('1jest')       // false
```

### Data Structures
- Array of pairs
  * Pairs can be inner arrays of 2 characters elements
  * Or, alternatively, they can be objects with two pairs, where each key is also a value in the array

### Implementation
- Functional Abstraction
  + Iteration
- Algorithm
  + Create an object with inverted pair objects as properties
  + Store an uppercase version of the input
  + Iterate the uppercase string
    * if the letter at iteration can access the object
    * Delete the property with key of value
    * Delete property at iteration
  + If ever the object cannot be accessed, return false
  + Return true if iteration stops


### Task
- A collection of spelling blocks has two letters per block, as shown in this list:
```
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
```

- This limits the words you can spell with the blocks to only those words that do not use both letters from any given block. You can also only use each block once.

- Write a function that takes a word string as an argument, and returns true if the word can be spelled using the set of blocks, or false otherwise. You can consider the letters to be case-insensitive when you apply the rules.