## Small Problems: String and Text Processing - Search Word Part 2

### Understanding
- Input
  + 2 arguments
  + Both Strings
  + First, word
  + Second, chunk of text
- Output
  + Text
  + Occurences of the search word transformed
    * Enclosed with 2 asterisks
    * Uppercase
- Functional Abstraction
  + Trasformation

### Task
- The function from the previous exercise returns the number of occurrences of a word in some text. Although this is useful, there are also situations in which we just want to find the word in the context of the text.

For this exercise, write a function that takes a `word` and a string of `text` as arguments, and returns the `text` with every instance of the `word` highlighted. To highlight a word, enclose the word with two asterisks ('`**`') on each side and change every letter of the word to uppercase (e.g., '`**HIGHLIGHTEDWORD**`').

### Implementation
- Split on spaces
- Map
  + If the word matches the search word them hightlight it