## Searching 101

### Understanding
- Need to use `'readline-sync'` to solicit numbers from the console.
- Input
  + Six numbers
  + Apparently, integers
- Output
  + A string
  + Based on a conditional
    * Two options

### Task
- Write a program that solicits six numbers from the user, then logs a message that describes whether or not the sixth number appears amongst the first five numbers.

- Examples:

```
Enter the 1st number: 25
Enter the 2nd number: 15
Enter the 3rd number: 20
Enter the 4th number: 17
Enter the 5th number: 23
Enter the last number: 17

The number 17 appears in [25, 15, 20, 17, 23].

-----

Enter the 1st number: 25
Enter the 2nd number: 15
Enter the 3rd number: 20
Enter the 4th number: 17
Enter the 5th number: 23
Enter the last number: 18

The number 18 does not appear in [25, 15, 20, 17, 23].
```

### Implementation
- Prompt the user for 6 numbers
  + Store the first five in an array
  + Store the sixth in a variable
- If the last number is in the array
  + Test w/ `includes`
    * Output one string
  + Else
    * Output the other
