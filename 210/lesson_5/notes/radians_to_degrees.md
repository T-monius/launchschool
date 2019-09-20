// Radians to Degrees

### Understanding
- Angle measurements
  + 2 useful times for them:
    1. Circle calculations
    2. Arc calculation
  + Radians
    * Easier to work with then degrees
    * Radian = angle made when the radius is wrapped around the circle
    * About `57.2958` degrees
    * Half circle has `PI` radians
      - Half circle is 180 degrees
      - So, 180 divided by `PI` equals `57.2958`
  + Degrees
    * 360 in a circle
    * 180 in a half circle
  + Conversion
    * Radians to degrees
      - radians multiplied 180 divided by `PI` 
- `Math` methods for dealing with angle measurements
  + Expect values in radians
  + Return values in radians
- If you're given degrees, you want to convert them to radians

- Create a Function
  + Input
    * Radians
    * Use `Math.PI` to operate on input
  + Output
    * Degrees

### Task
- The `Math` methods that deal with angle measurements all expect and return values in radians instead of degrees. Mathematically, radians are easier to work with, so nearly all languages use radians for circle and arc calculations. To read more about radians, check out this article. Use the `Math.PI` property to create a function that converts radians to degrees.

### Implementation
- Return the radians multiplied by 180 divided by `PI`