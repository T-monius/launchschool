## Length

### Understanding
- Changing the `length` property of an array modifies the array.
  + When lengthening (making it greater than the current value), empty slots are added at the values beyond the previous length of the array.
    * The `length` property will then return the new value
    * Example, the changing of `length` to `4` adds an empty value to the end of the array.
  + When changing the value to a number less than that of the current value of `length`, elements past index `length - 1` are removed from the array.
    * The `length` property returns the value set to.
    * Example, the setting of the `length` property to `1` below.
  + Adding a value to an index beyond the current length of the array changes the `length` property to one greater than that index.
    * Intermediate indexes are also added as empty slots

### Task
- Read through the code below. What values will be logged to the console? Can you explain these results?

```js
var languages = ['JavaScript', 'Ruby', 'Python'];
console.log(languages);
console.log(languages.length);
//=> ['JavaScript', 'Ruby', 'Python']
//=> 3

languages.length = 4;
console.log(languages);
console.log(languages.length);
//=> ['JavaScript', 'Ruby', 'Python', empty]
//=> 4

languages.length = 1;
console.log(languages);
console.log(languages.length);
//=> ['JavaScript']
//=> 1

languages.length = 3;
console.log(languages);
console.log(languages.length);
//=> ['JavaScript', undefined, undefined]
//=> 3


languages.length = 1;
languages[2] = 'Python';
console.log(languages);
//=> ['JavaScript', undefined, 'Python']
//=> 3
console.log(languages[1]);
//=> undefined
console.log(languages.length);
//=> 3
```