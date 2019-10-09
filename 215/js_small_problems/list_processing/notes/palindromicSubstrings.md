## Small Problems: Palindromic Substrings

### Understanding
- Basically operating on the result of the `substrings` function from the previous exercise.
- Palindrome is the same forward and backwards
- All characters and capitalization irrelavant
- Functional Abstracion
  + Filter

### Task
- Write a function that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as backwards. The substrings in the returned list should be sorted by their order of appearance in the input string. Duplicate substrings should be included multiple times.

- You may (and should) use the substrings function you wrote in the previous exercise.

- For the purpose of this exercise, you should consider all characters and pay attention to case; that is, 'AbcbA' is a palindrome, but 'Abcba' and 'Abc-bA' are not. In addition, assume that single characters are not palindromes.

### Implementation
- Get substrings with previous funciton
- Filter substrings per a `palindrome` function
  + `isPalindrome`
    * Split and reverse a string
    * Compare it to the split version of itself