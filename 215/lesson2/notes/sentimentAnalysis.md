## Sentiment Analysis

### Understanding
- Input
  + String
- Task simplification
  + Determine whether there are more 'positive' or 'negative' words
  + Positive and negative words globally scoped
    * Arrays
    * String elements
- Output
  + String
- Functional Abstraction
  + Iteration
  + Interrogation
  + Cleaning input: transformation

### Task
- There are many ways to implement sentiment analysis. Here, we will use two arrays of words. One array contains words that connote a "positive" sentiment, while the other contains words that connote a "negative" sentiment. Given the counts of positive and negative words in our text, we can compute a sentiment score as the difference between the two counts, "positive word count - negative word count." The sentiment of the text is positive if the difference is positive, negative if the difference is negative, and neutral if the difference is 0 (the word counts are equal).

- Implement a function that takes some text as an argument and logs some information about whether the text has a positive, negative, or neutral sentiment.

### Implementation
- Instantiate `positiveWord` and `negativeWord` variables
  + __Correction__ Store `positive` and `negative` properties in a `sentiments`object.
  + An object will make the later output easier
- Parse text (separate function)
  + Split by spaces
  + Map
    * Remove non-alpha characters
- Iterate the text (Separate function)
  + Store a word if it's positive or negative
- Output stored words
- Output 'Positive', 'Negative', or 'Neutral'