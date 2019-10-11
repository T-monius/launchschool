## Sentiment Analysis 2

### Understanding
- The regexes supplied take advantage of lazy matching.
  + `match` in JS is like `scan` in Ruby if used with the global
- The word comparison may result in a slightly different outcome per my splitting words slightly differently than LS

### Task
- Re-implement the sentiment analysis with regex-based positive and negative word lists. The use of regex to process text-based data is extremely powerful. In the previous practice problem, we did not count words that were just different forms of the words in the positive and negative word lists. For instance, we didn't count "scorns" since it isn't an exact match for "scorn".

- We could add the variations of each word; for example: fortune --> fortunes, respect --> respected, oppress --> oppressed, or death --> deaths. This works, but we can use regex to make the relationship between variants more evident:

### Implementation
- Re-utilize previous code
- Don't split but parse out positive and negative matches directly
- Instead of testing whether or not a word is included in an array
  + Parse for regex mathches