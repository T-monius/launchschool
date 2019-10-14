## String and Text Processing: Staggered Caps Part 2

### Understanding
- Input
  + String
- Output
  + New String
  + Every other alpha character is lowercase
- Cannot count simply by index
  + Have to track a custom count
- Funtional Abstraction
  + Transformation
  + Interrogation

### Task
- Modify the function from the previous exercise so that it ignores non-alphabetic characters when determining whether a letter should be upper or lower case. Non-alphabetic characters should still be included in the output string, but should not be counted when determining the appropriate case.

### Implementation
- Set a count variable
- Map the string
  + If the count variable is even capitalize
    * Else lowercase
  + Increment the count variable if the character is alpha