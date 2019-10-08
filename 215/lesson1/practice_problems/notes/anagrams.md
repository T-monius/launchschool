## Practice Problems: Anagrams

### Understanding
- Function
  + Input
    * 2 arguments
    * String
    * Array
  + Output
    * Array
    * Containing strings
- Functional Abstractions
  + Filter the array

### Task
- Write a Function named `anagram` that takes two arguments: a word and an array of words. Your function should return an array that contains all the words from the array argument that are anagrams of the word argument. For example, given the word "listen" and an array of candidate words like "enlist", "google", "inlets", and "banana", the program should return an array that contains "enlist" and "inlets".
```js
function anagram(word, list) {
  // ...
}

anagram('listen', ['enlists', 'google', 'inlets', 'banana']);  // [ "inlets" ]
anagram('listen', ['enlist', 'google', 'inlets', 'banana']);   // [ "enlist", "inlets" ]
```

### Implementation
- Filter the array
  + Condition: word at iteration an anagram of the primary input?