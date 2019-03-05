## Double Char (Part 2)

### Understanding

#### Input
- String

#### Task
- Double consonants in the input string
- Transformation

#### Output
- A new string
- Consonants of the original string are doubled
- Vowels (a, e, i, o, u), digits, punctuation, and whitespace are not doubled

### Implementation
- 1) Iterate over each character of the input
  + Double the value at iteration if it's a consonant
    * Provide an array of consonants to compare against
    * Double unless vowels, digits, punctuation, or whitespace
    * Double if alpha and not a vowel
  + Push to a return string
  + Return the new string
- 2) Convert to an array of characters and map
  + Iterate the array
  + Perform doubling if needed
  + Join the returned array