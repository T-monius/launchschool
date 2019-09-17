## Array Comparison

### Understanding Current Function
- Input
  + 2 arrays
- Process
  + Iterates the first array
  + Compares the value at iteration to the same index of the secondary array
- Output
  + boolean

### Understanding New Function
- Input
  + 2 arrays
- Process
  + Compare value at index to all values of the secondary array
    * If the secondary array includes the value at iteration
      - Find the index in the copy array
      - Slice that index from the copy array
      - Else
        + Return `false`
    * Return `false` if the iteration is completed, and no match was found

- Output
  + Boolean

### Task
- Reimplement the array comparison function so that two arrays containing the same values—but in a different order—are considered equal. For example, `[1, 2, 3] === [3, 2, 1]` should return `true`.

### Implementation
- 