## Word Count

### Understanding
- Input
  + 1 argument
  + string
- Task
  + Populate an object with keys representing each work of the input string
  + Values for the keys in the object represent the occurences of the word
- Output
  + Object

### Task
- Write a function named `wordCount` that takes a single String as an argument. The function should return an Object that contains the counts of each word that appears in the provided String. In the returned Object, you should use the words as keys, and the counts as values.

### Implementation
- Set a variable to an object for returning
- Parse the string by words (spaces)
  + Store words in an array
  + Iterate the array
    * For each word
      - If it's not in the object
        + Add it with a value of `1`
      - Else
        + Increment the value of the existing property
- Return the object