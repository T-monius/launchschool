## Assessment 216 Prep: Leetcode Medium - Partition Labels

### Task
- A string S of lowercase letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.

- Explanation:
  + The partition is "ababcbaca", "defegde", "hijhklij".
  + This is a partition so that each letter appears in at most one part.
  + A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.

- Note:

  1. S will have length in range [1, 500].
  2. S will consist of lowercase letters ('a' to 'z') only.

### Understanding
- Input
  + String
  + All lowercase
  + Partition
    * Get subsets of a string
      - Break the string into parts
    * As many times as possible (max times)
      - Each letter only occurs in one partition
- Output
  + An array (list)
  + Integer elements
    * Designate where the partitions occur
      - Based previous partitions, startpoint of subsequent partitions can be determined
    * How long each partition is (size)
- Determining Bounds
  + Bound
    * Where a partion ends and another begins
    * Given that a letter, the minimum bound is itself
      - Where else it occurs in the string
    * Other bounds
      - Other letters overlapped by a previous letter's bounds and thus in the same partition
      - If their boundary extends past the boundary of the previous letter, the boundary of the entire partition must be extended

Simple Algorithm
  + Go letter by letter and determine if the letter is within the current partition
    * If it is,
      - is its last occurence within the current partition
      - If so
        + Move on to the next letter
      - Else
        + Extend the partition

```
Example 1:
Input: S = "ababcbacadefegdehijhklij"
Output: [9,7,8]

Example 2
Input: S = "ababcbacadefegehijhklij"
Output: [9,1,5,8]
"ababcbaca", "d", "efege", "hijhklij"

Example 3
Input: S = "a"
Output: [1]
"a"

Example 4
Input: S = ""
Output: [0]
"a"

Example 5
Input: S = Longer than 500
Output: 'invalid'
```

### Data Structure
- String

### Algorithm
- Functional Abstraction
  + Iteration
- Hard Algorithm
  + Set a variable for storing partition lengths
  + Set a variable for the current partition boundary
  + Iterate the input string
    * Simple `for` loop
    * If the character at iteration is within the bound of the partition
      - If the last index of the current element in the string is greater than the current boundary
        * Set it to the bound
        * Else
          - Move on to the next character
    * Else
      - Push the current bound (if using an index + 1) to the partitions array
      - Slice the string and reset to the index past the last partion to the end
      - Set bound to 0
