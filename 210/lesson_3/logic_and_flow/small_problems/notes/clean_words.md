## Clean Up the Words

### Understanding
- Input
  + String
- Scrunching multiple non-alpha characters challenging

### Task
- Remove non-alpha characters from a string
- Runs of non-alphas replaced by a single space
- Given a string that consists of some words and an assortment of non-alphabetic characters, write a function that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (i.e., the result string should never have consecutive spaces).

### Implementation
- Set a clean string to empty
- Iterate over input string
  + If a character is alpha
    * Push it to the clean string
    * Else
      - If last character in clean string is alpha
        + Push a space
        + Else --nothing--