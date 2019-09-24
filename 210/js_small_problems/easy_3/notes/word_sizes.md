## Word Sizes

### Understanding
- Input
  + String
  + Words. Separated by spaces
  + Punctuation included
- Output
  + Object
  + Counts
    * Property represents the count of a word
    * Value, represent the number of words of 'property' size

### Task
- Write a function that takes a string consisting of one or more space separated words, and returns an object that shows the number of words of different sizes.

Words consist of any sequence of non-space characters.

Examples:
```js
wordSizes('Four score and seven.');                       // { "3": 1, "4": 1, "5": 1, "6": 1 }
wordSizes('Hey diddle diddle, the cat and the fiddle!');  // { "3": 5, "6": 1, "7": 2 }
wordSizes("What's up doc?");                              // { "2": 1, "4": 1, "6": 1 }
wordSizes('');                                            // {}
```

### Implementation
- Use a RegEx to separate words || split words then clean them for punctuation
- Set an object for return
- Iterate the array of words
  + Access the object by the words 'size'
  + If the size exists
    * Add one to the value
  + Else,
    * Create a property by that size and assign it the value of zero
- Return the object