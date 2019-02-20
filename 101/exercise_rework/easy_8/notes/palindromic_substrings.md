## Understanding
- Input
  + A single String object
- Task
  + Find all of the substrings of a string
  + Determine which substrings are palindromes
  + A palindrome is the same forward and backwards
- Output
  + An Array
  + String elements
    * All palindromes from the string

## Implementation
- Call `substrings` on the input
- Select from the substrings those that are palindromic
  + Use string reverse to compare the element at iteration with its
    reversed self
