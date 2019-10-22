## JS Small Problems: Medium 2 - Triangle Sides

### Understanding
- Input
  + 3 arguments
  + Integers
  + Represent degrees
- Output
  + String
  + Represents the type of triangle
- Invalid
  + The sum of all angles must be exactly 180 degrees
  + Every angle must be greater than 0

### Examples / Test Cases

### Implementation
- Data Structures
  + Array

- Functional Abstractions
  + Reduce to determine the sum of all angles

- Algorithm
  + Set an array to the inputs
  + Reduce to determine sum is 180 degrees
    * Return `'invalid'` if it's not
  + Return `'invalid'` if some of the elements are zero or less
  + If some angle is 90 degrees, return `'right'`
  + If every degree is less than 90 degrees, return `'acute'`
  + If some degress is greater than 90 degrees, return `'obtuse'`

### Task
- A triangle is classified as follows:

  + Right: One angle is a right angle (exactly 90 degrees).
  + Acute: All three angles are less than 90 degrees.
  + Obtuse: One angle is greater than 90 degrees.
- To be a valid triangle, the sum of the angles must be exactly 180 degrees, and every angle must be greater than 0. If either of these conditions is not satisfied, the triangle is invalid.

- Write a function that takes the three angles of a triangle as arguments, and returns one of the following four strings representing the triangle's classification: 'right', 'acute', 'obtuse', or 'invalid'.

- You may assume that all angles have integer values, so you do not have to worry about floating point errors. You may also assume that the arguments are in degrees.