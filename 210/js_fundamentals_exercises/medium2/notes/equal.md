## Equal

### Understanding
- `===` compares as to whether the Objects are the same Object.

### Task
- Read through the following code. Currently, it does not log the expected result. Explain why this happens, then refactor the code so that it works as expected.

```js
var person = { name: 'Victor' };
var otherPerson = { name: 'Victor' };

console.log(person === otherPerson);    // false -- expected: true
```

### Implementation
- 