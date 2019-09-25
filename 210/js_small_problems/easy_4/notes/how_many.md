## How Many

### Understanding
- Function
- Input
  + array
- Output
  + Object
    * properties: array elements
    * values: count of input array's elements

### Task
- Write a function that counts the number of occurrences of each element in a given array. Once counted, log each element alongside the number of occurrences.

Example:
```js
var vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
                'motorcycle', 'motorcycle', 'car', 'truck'];

countOccurrences(vehicles);

// console output
car => 4
truck => 3
SUV => 1
motorcycle => 2
```

### Implementation
- Create a helper function to create the counts object
- Set a variable to an object for return
- Iterate the input array
  + Access the object
  + If the element at iteration already exists
    * Add one to it
  + Else
    * Set it to 1
  + Great candidate for a ternary
- Iterate the counts object and log