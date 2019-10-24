## JS Small Problems: Debugging - Member Directory

### Understanding
- The regex for validation uses `\w` to make sure that the name is all word characters.
  + Digits are word characters
  + Can use a group to specify alphas

### Examples / Test Cases

### Implementation
- Data Structures

- Functional Abstractions

- Algorithm

### Task
- Caroline manages the member directory of her club and decided to implement a program she can use for doing that. Since the club is not very big, it's sufficient for her to keep the members' names and phone numbers in an object. Later she wants to add functionality that allows her to write this object to a file.

- One requirement Caroline takes very seriously is input validation. She intended for her code to strictly require that only alphabetic letters be included in the members' first and last names, separated by a space. But upon making a typo when entering the information of the newest member, she realizes that isn't the case.

- Figure out why not and fix the code so that it works as expected. You may also consider writing a few more test cases to insure that the input validation requirement is properly met.