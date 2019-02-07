## Understanding
- Input
  + A single String object
- Task
  + All substrings from every index from 0 through all positive indexes
- Output
  + An Array object
  + Every element is a substring of the input
    * Initial input is included
    * Elements are ordered from occurrence in the string

## Implementation
- Initiliaze a return array
- Initiliaze an index for iteration
- Iterate/recurr over the string
- Find all of the substrings from a given index to end of string
  + Push them to the return array
  + Continue iteration