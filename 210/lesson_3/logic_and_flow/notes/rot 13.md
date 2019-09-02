## Rot 13

### Understanding
- Cipher
  + String to String
  + If character is alpha, shift right 13 positions
  + Return to the beginning at the end (o becomes b)
    * Can acheive this with remainder
    * Remainder of 90 and 122
  + Case sensitive
  + Non-alphas preserved
- Rot 13 applied twice returns the original string
```js
string.charCodeAt(0)
String.fromCharCode(asciiNumeric)
```
### Task
- Write a Function, rot13, that takes a String and returns that String transformed by the rot13 cipher.

### Implementation
- Set variable for encrypted string
- Iterate over input string
  + Convert to ascii
  + If char between 65 and 90 inclusive
    * Add 13
    * if Result of addition greater than  90, get the remainder of 90 division
    * add the remainder to 65
    * Convert back to char
    * Push to return String
  + If char is between 97 and 122
    * ^ Similar to above
    * Just take remainder of 122 division
  + Else push character to return string un-moodified