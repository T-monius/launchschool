## Array Object Part 1

### Understanding
- I forget what trying to access a non-existent index if an array returns
  + `undefined`?

### Task
- What will the following code log to the console and why? Don't run the code until after you have tried to answer.

```js
var myArray = ['a', 'b', 'c'];

console.log(myArray[0]);
console.log(myArray[-1]);

myArray[-1] = 'd';
myArray['e'] = 5;
myArray[3] = 'f';

console.log(myArray[-1]);
console.log(myArray['e']);
console.log(myArray);
````

### Answer
- `'a'`
- `undefined`
- `'d'`
- `5`
- The last log will reveal all properties of the array