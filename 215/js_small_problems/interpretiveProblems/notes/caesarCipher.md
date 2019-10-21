## Interpretive Problem Solving: Caesar Cipher

### Understanding
- Function
  + `caesarEncrypt`
    * Input
      - 2 arguments
      - String
      - Integer
    * Output
      - String
      - Same length as input string
      - Encrypted
- Shift alpha charcters
  + Characters can be shifted per their encoding
  + Alternatively, can create an array of characters
  + Adding from a certain point or a big enough number can cause a shift beyond the scope of the alphabet in encoding
    * Can use the remainder of division to 'wrap' back to the alphabet

### Examples / Test Cases
```js
// simple shift
caesarEncrypt('A', 0);       // "A"
caesarEncrypt('A', 3);       // "D"

// wrap around
caesarEncrypt('y', 5);       // "d"
caesarEncrypt('a', 47);      // "v"

// all letters
caesarEncrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 25);
// "ZABCDEFGHIJKLMNOPQRSTUVWXY"
caesarEncrypt('The quick brown fox jumps over the lazy dog!', 5);
// "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"

// many non-letters
caesarEncrypt('There are, as you can see, many punctuations. Right?; Wrong?', 2);
// "Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?"
```

### Implementation
- Data Structures
  + Array of Characters
  + Join back to a string after encryption

- Functional Abstractions
  + Transformation

- Algorithm
  + Set arrays to uppercase and lower case alpha characters starting from nil
  + Split the input string into an array and map
    * If the char at iteration is in either alpha array
      - Perform math based on the index
      - Retrieve the next char at (currentIdx + offset) remainder 26 from the array
      - Return the new char
    * Else return the char as is
  * Join the array by an empty string

### Task
- Write a function that implements the Caesar Cipher. The Caesar Cipher is one of the earliest and simplest ways to encrypt plaintext so that a message can be transmitted securely. It is a substitution cipher in which each letter in a plaintext is substituted by the letter located a given number of positions away in the alphabet. For example, if the letter 'A' is right-shifted by 3 positions, it will be substituted with the letter 'D'. This shift value is often referred to as the key. The "encrypted plaintext" (ciphertext) can be decoded using this key value.

- The Caesar Cipher only encrypts letters (including both lower and upper case). Any other character is left as is. The substituted letters are in the same letter case as the original letter. If the key value for shifting exceeds the length of the alphabet, it wraps around from the beginning.