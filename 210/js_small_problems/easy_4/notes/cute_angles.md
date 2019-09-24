## Cute Angles

### Understanding
- Input
  + Floating point number (all js numbers are floats)
  + Angle
  + Between 0 and 360
- Output
  + String
  + Digits representing degrees, minutes, and seconds
    * degree = 60 minutes
    * minute = 60 seconds

### Task
- Write a function that takes a floating point number representing an angle between 0 and 360 degrees, and returns a string representing that angle in degrees, minutes, and seconds. You should use a degree symbol (`˚`) to represent degrees, a single quote (`'`) to represent minutes, and a double quote (`"`) to represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.

Examples:
```js
dms(30);           // 30°00'00"
dms(76.73);        // 76°43'48"
dms(254.6);        // 254°35'59"
dms(93.034773);    // 93°02'05"
dms(0);            // 0°00'00"
dms(360);          // 360°00'00" or 0°00'00"
```

Note: your results may differ slightly depending on how you round values, but should generally be within a second or two of the results shown.

### Implementation
- Assign the integer form of the input to a `degrees` variable
- Assign remainder of 1 division * 60 to a minutes variable
- Assign remainder of 1 division to a secondds variable
- Get the floor of the seconds variable and re-assign it to seconds
- Reassign seconds to itself times sixty and the floor
- Interpolate the variables into a string