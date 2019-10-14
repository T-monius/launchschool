## Small Problems: String and Text Processing - Search Word Part 1

### Understanding
- Input
  + 2 arguments
  + Both String
  + Search word
  + Text, longer then search word
- Output
  + Integer
- Functional Abstraction
  + Reduce

### Task
- Write a function that takes a `word` and a string of `text` as arguments, and returns an integer representing the number of times the `word` appears in the `text`.

- You may assume that the `word` and `text` inputs will always be provided.

### Implementation
- Split the text on spaces
- Reduce the array
  + Give the `reduce` function a secondary integer argument `0`
  + Conditionally add to the 'count' if the word at iteration matches the search word