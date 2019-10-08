## Practice Problem: Total Square Area

### Understanding
- Input
  + Array
    * Nested Arrays
    * Two values
    * Integers: height and width (doesn't matter which is which)
- Output
  + A single number

- Abstractions
  + Many to one: reduction
  + Reduce at every step
    * The first step may be a transformation, however.

### Task
- For this practice problem, we'll represent rectangles as Arrays with two elements: a height and a width.

Write a Function named `totalArea` that takes an Array of rectangles as an argument. The Function should return the total area covered by all the rectangles.
```js
var rectangles = [[3, 4], [6, 6], [1, 8], [9, 9], [2, 2]];

totalArea(rectangles);    // 141
```

### Implementation
1. Map the `rectangles` Array
  + Multiple one array value by the other
2. Reduce the previous return value (sum)