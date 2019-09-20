## Mutation

### Understanding
- Array of strings
  + Representing names
- An empty array
- Iterate the first array
  + Push to the second at each iteration
- Iterate the first array again
  + Upper case all 'C' names
- Output the second array

### Task
- What will the following code log to the console and why? Don't run the code until after you have tried to answer. 

```js
var array1 = ['Moe', 'Larry', 'Curly', 'Chemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo'];
var array2 = [];
var i;

for (i = 0; i < array1.length; i += 1) {
  array2.push(array1[i]);
}

for (i = 0; i < array1.length; i += 1) {
  if (array1[i].startsWith('C')) {
    array1[i] = array1[i].toUpperCase();
  }
}

console.log(array2);
```

### Answer
- The logging of the second array will reflect the mutation of the first
  + Even though the arrays are separate objects, they share element values
  + If the elements of one array are mutated, the mutation will be reflected in the other
- LS Answer
  + I was wrong
  + The iteration performs reassignment
  + Also, strings are immutable