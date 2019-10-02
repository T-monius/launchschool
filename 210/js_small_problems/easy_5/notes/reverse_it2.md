## Reverse It Part 2

### Understanding
- Input
  + String
  + One or more words
  + Space separated if more than one word
  + Alphas and spaces only
- Output
  + New string
  + Certain words themselves reversed
    * Five or more letter words

### Task
- Write a function that takes a string argument containing one or more words, and returns a new string containing the words from the string argument. All five-or-more letter words should have their letters in reverse order. The string argument will consist of only letters and spaces. Words will be separated by a single space.

### Implementation
- Split the string
- Map it
  + Reverse the string if it's of a certain length
    * Split it by character
    * Reverse it
    * Join it by character
- Return the array joined by spaces