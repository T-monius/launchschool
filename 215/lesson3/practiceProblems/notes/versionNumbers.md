## An Example Problem: Comparing Version Numbers

### Understanding
- Varsion numbers
  + Dot separated numbers
    * Can be multiple dots unlike decimal notation
    * Otherwise equal numbers are less than the equivalent with a dot number
    * A dot appended value greater than `0` makes one 'version' greater then the next
    * `1 = 1.0`
    * `1 < 1.1`
  + Recursion may be a nice mental model for this problem
  + Validation
    * Input to only contains dots and numbers

- Input
  + 2 versions
  + Strings
- Output
  + Number
  + Whether one version is greater than the other
  + `1` greater
  + `-1`, less than
  + `0`, equal to

### Data Structures and Algorithm
- Functional Abstraction
  + Interrogation
  + Iteration / Recursion
- String input
- Array of Numbers

#### Algorithm
- Validate the string
- Split the string by dots
- Map strings to numbers
- Fill zeros in one of the arrays if they are not equal length
- Iterate over the to arrays of numbers
  + If at any point in the iteration, one integer is greater than the next return
    * `1` if first array number is greater
    * `-1` if second array number is greater
- Return `0` if the iteration didn't return anything

### Implementation
- 

### Examples
```js
console.log(compareVersions('0.1', '1'))          //=> -1
console.log(compareVersions('1', '1.0'))          //=> 0
console.log(compareVersions('1.0', '1.1'))        //=> -1
console.log(compareVersions('1.1', '1.2'))        //=> -1
console.log(compareVersions('1.2', '1.2.0.0'))    //=> 0
console.log(compareVersions('1.2.0.0', '1.18.2')) //=> -1
console.log(compareVersions('1.18.2', '13.37'))   //=> -1
console.log(compareVersions('1', '0.1'))          //=> 1
console.log(compareVersions('1.18.2', '1.2'))     //=> 1
console.log(compareVersions('1d.g', '1.2'))       //=> null
```

### Task
- While version numbers often appear to be decimal numbers, they are, in fact, a convenient notation for a more complicated number system. The following are all legal version numbers:

```
1
1.0
1.2
3.2.3
3.0.0
4.2.3.0
```

- Write a function that takes any two version numbers in this format and compares them, with the result of this comparison showing whether the first is less than, equal to, or greater than the second version:

- If version1 > version2, we should return 1.
- If version1 < version2, we should return -1.
- If version1 === version2, we should return 0.
- If either version number contains characters other than digits and the `.` character, we should return null.
- Here is an example of version number ordering:

```
0.1 < 1 = 1.0 < 1.1 < 1.2 = 1.2.0.0 < 1.18.2 < 13.37
```