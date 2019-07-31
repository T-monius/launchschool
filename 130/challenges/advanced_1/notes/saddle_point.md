## Saddle Point

### Understanding
- A saddle point is a number greater than or equal to all numbers in the same row; less than or equal to numbers of the same column
- x value is a row
- y value is a column
- `Matrix` class
  + `initialize`
    * takes a string
    * String represents a matrix
  + `#rows`
    * Getter
    * Returns rows at an index


### Task
- Write a program that detects saddle points in a matrix.

So say you have a matrix like so:

```
    0  1  2
  |---------
0 | 9  8  7
1 | 5  3  2     <--- saddle point at (1,0)
2 | 6  6  7
```

It has a saddle point at (1, 0).

It's called a "saddle point" because it is greater than or equal to every element in its row and less than or equal to every element in its column.

A matrix may have zero or more saddle points.

Your code should be able to provide the (possibly empty) list of all the saddle points for any given matrix.

Note that you may find other definitions of matrix saddle points online, but the tests for this exercise follow the above unambiguous definition.

### Implementation
- 
