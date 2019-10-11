## Longest Sentence### Understanding
- Input
  + String
- Output
  + 2 String
  + Longest Sentence
  + Word count interpolated in another phrase
- Sentences
  + Begin with a word character
  + End with: `.`, `!`, or `?`
- Words
  + Not spaces or word ending characters
- Functional Abstraction
  + Transformation
    * Done with regex for parsing sentences
  + Reduction
    * Reduce from many sentences to one
    * This is conditional of an interrogation between the length of sentences

### Task
- Write a program that determines the sentence with the most words in some text. Sentences may end with periods (`.`), exclamation points (`!`), or question marks (`?`). Sentences always begin with a word character. You should treat any sequence of characters that are not spaces or sentence-ending characters, as a word. Log the longest sentence and its word count to the console. Pay attention to the expected output. Note that this problem is about manipulating and processing strings. As such, every detail about the string matters (e.g., case, punctuation, tabs, spaces, etc.).

### Implementation
- Parse by sentences
  + Match by a beginning word character until a sentence ender lazily
- First Solution
  + Build a lookup object associating each sentence to it's count
- Second Solution
  + Reduce a list of sentences to one

- Counting words
  + Match sentences by non-space characters and non-ending characters