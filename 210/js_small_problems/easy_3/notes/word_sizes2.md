## Word Sizes Part 2

### Understanding
- Count contractions as if they were one word.

### Task
- Modify the wordSizes function from the previous exercise to exclude non-letters when determining word size. For instance, the word size of `"it's"` is `3`, not `4`.

### Implementation
- Use a regex to split and remove punctuation except for apostrophes
  + Use `replace` and another apostrophe to strip out apostrophes