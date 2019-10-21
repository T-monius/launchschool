## Interpretive Problem Solving: Vigenere Cipher

### Understanding
- Cipher using a keyword
  + Each letter of the keyword correspondes to a letter in the input
  + The keyword repeats itself
  + For each letter of the input, use the corresponding letter of the keyword
    * Only letters count in matching the keyword characters to the letters

### Examples / Test Cases
```
plaintext: Pineapples don't go on pizzas!
keyword: meat

Applying the Vigenere Cipher for each alphabetic character:
plaintext : Pine appl esdo ntgo onpi zzas
shift     : meat meat meat meat meat meat
ciphertext: Bmnx mtpe qwdh zxgh arpb ldal

result: Bmnxmtpeqw dhz'x gh ar pbldal!
```

```js
vigenereEncrypt("Pineapples don't go on pizzas!", 'meat') // "Bmnxmtpeqw dhz'x gh ar pbldal!"
````
### Implementation
- Data Structures
  + Array lookup tables
    * upper and lowercase alpha-characters
  + Array
    * Char/string elements
  + Joined back to an array

- Functional Abstractions
  + Transformation

- Algorithm
  + Copy the lookup tables and caesar cipher function from the previous exercise
  + Create a function that takes a string and a keyword
  + Set a counter for counting the index of the keyword
  + Get an array of characters from the string input
    * If the character at iteration is alpha, 
      + Perform the caesar cipher with the index character of the keyword
      + Icremeent the counter, if the increment goes past the last index of the length of the keyword, set it to 0 (maybe just use `%`)
      + Return the encrypted character
    * Else return the character

### Task
- The Vigenere Cipher encrypts alphabetic text using polyalphabetic substitution. It uses a series of Caesar Ciphers based on the letters of a keyword. Each letter of the keyword is treated as a shift value. For instance, the letter 'B' corresponds to a shift value of 1, and the letter 'd' corresponds to a shift value of 3. In other words, the shift value used for a letter is equal to its index value in the alphabet. This means that the letters 'a'-'z' are equivalent to the numbers 0-25. The uppercase letters 'A'-'Z' are also equivalent to 0-25.

- Applying the Vigenere Cipher is done sequentially for each character by applying the current shift value to a Caesar Cipher for that particular character. To make this more concrete, let's look at the following example:

- Notice that in the example, the key isn't moved forward if the character isn't in the alphabet. Like the Caesar Cipher, the Vigenere Cipher only encrypts alphabetic characters.

- Write a function that implements the Vigenere Cipher. The case of the keyword doesn't matter—in other words, the resulting encryption won't change depending on the case of the keyword's letters (e.g., `'MEat' === 'mEaT'`).