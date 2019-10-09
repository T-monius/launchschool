## Small Problems: Substrings

### Understanding
- Input
  + String
- Output
  + Array
    * String elements
    * All substrings
- Functional Abstraction
  + Map

### Task
- the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, return the substrings at a given position from shortest to longest.

You may (and should) use the `substringsAtStart` function you wrote in the previous exercise:

### Implementation
- Map the string
  + Call `substringsAtStart` for index
  + Return the result of `substring`
- Return the return array flattenned