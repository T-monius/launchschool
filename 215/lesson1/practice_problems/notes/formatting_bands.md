## Practice Problems: Formatting Bands

### Understanding
- Input
  + Array
    * Object elements
- Output
  + Array
    * Object elements
- Functional Abstraction
  + Transformation

### Task
- Practice Problem: Formatting Bands
We have the following Array of information for some popular bands:
```js
var bands = [
  { name: 'sunset rubdown', country: 'UK', active: false },
  { name: 'women', country: 'Germany', active: false },
  { name: 'a silver mt. zion', country: 'Spain', active: true },
];
```
- There are problems with this data, though, so we first have to clean it up before we can use it:

  + The band countries are wrong: all the bands should have 'Canada' as the country.
  + The band name should have all words capitalized.
  + Remove all dots from the band names.
- Write a function that can process the input band Array and return an Array that contains the fixed information:
```js
var bands = [
  { name: 'sunset rubdown', country: 'UK', active: false },
  { name: 'women', country: 'Germany', active: false },
  { name: 'a silver mt. zion', country: 'Spain', active: true },
];

function processBands(data) {
  // ...
}

processBands(bands);

// should return:
[
  { name: 'Sunset Rubdown', country: 'Canada', active: false },
  { name: 'Women', country: 'Canada', active: false },
  { name: 'A Silver Mt Zion', country: 'Canada', active: true },
]
```

### Implementation
- Map the array
  + Format the objects according to 3 requirements
    1. Make Canadian
      * Reassign name
    2. Remove dots
      * Use `replace` to replace the erroneous character
    3. Capitalize names
      * Split to words
      * Map and Capitalize
      * Join
  + Three custom functions?