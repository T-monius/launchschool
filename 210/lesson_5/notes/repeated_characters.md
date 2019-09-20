## Repeated Characters

### Understanding
- Input
  + string
- Task
  + Count repeated charachters
- Output
  + Object
    * characters are keys
    * counts are values
- Assumne there are no spaces?

### Task
- Implement a function that takes a `String` as an argument and returns an object that contains a count of the __repeated__ characters.

- Note that `repeatedCharacters` does a bit more than simply count the frequency of each character: it determines the counts, but only returns counts for characters that have a count of 2 or more. It also ignores the case.

### Implementation
- Downcase all the charactes of the string
- Iterate the string
  + Add charactes to the object
- Filter the object?
  + No filter mechanism on Object
  + Can iterate the hash and delete where occurrences are less than 2
  + Alternatively,
    * Get the keys
    * Filter the keys array by occurrences of characters
    * build a new hash based on the desired keys