## Practice Problems: Strings - Problem 16

### Understanding
- Input
  + User name
- Output
  + Greeting
    * Conditional upon last character
    * `'!'` or not
    * All uppercase if present

### Task
- Write a program that asks for a user's name, then greets the user with that name. If the user appends a ! to his name (e.g., 'Bill!'), the computer should "yell" its greeting: that is, it should log everything to the console in uppercase. You can check whether the name ends with a ! using String.prototype.endsWith (ES6 only). You can remove the ! from the user's name with String.prototype.slice.
```console
What is your name? Bob
Hello Bob.                                   // console output


What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?             // console output
```

### Implementation
- Prompt the user for their name
- Conditionally remove the bang and store in a variable
- If bang is present
  + Output and uppercase greeting
  + Else jsut output a greeting