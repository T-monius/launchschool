## 216 Assessment Prep: Extra Practice - Duplicate Encoder

### Understanding
- Input
  + String
- Output
  + String
  + Same length as the input string
  + Converted characters according to count

### Examples / Test Cases
```js
// "din"      =>  "((("
// "recede"   =>  "()()()"
// "Success"  =>  ")())())"
// "(( @"     =>  "))((" 
```

### Implementation
- Data Structures
  + Array
  + Object
  + String

- Functional Abstractions
  + Iteration (for count)
  + Transformation (for our final string)
- Algorithm
  + Set an empty object for counts
  + Get an array from the characters of the string
  + Iterate the array
    * Increment the property by character access of the object if it exists else initialize it to 1
  + Map the array of characters, if the count is greater than 1, return `')'` else `'('`

### Task
- The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.