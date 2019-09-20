## Welcome Stranger

### Understanding
- Function `greetings`
  + Input
    - 2 arguments
      1. array
        * Ex. we have 3 elements in the array
        * first, middle initial, last names
      2. object
        * `title`
        * `occupation`

### Task
- Write a function that takes two arguments, an array and an object. The array will contain two or more elements that, when combined with spaces, produce a person's full name. The object will contain two keys, `title` and `occupation`, and suitable values for both items. Your function should log a greeting to the console that uses the person's full name, and mentions the person's title and occupation.

### Implementation
- Join the elements of the array
  + Interpolate the joined string into the message
- Interpolate the values by key of the object into the message
- Log the message