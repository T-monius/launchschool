## Conditional Loop

### Task
- The following program is expected to log each number between `0` and `9` (inclusive) that is a multiple of `3`. Read through the code shown below. Will it produce the expected result? Why or why not?

```js
var i = 0;
while (i < 10) {
  if (i % 3 === 0) {
    console.log(i);
  } else {
    i += 1;
  }
}
````

### Answer
- The variable `i` is only being incremented if the value is not a multiple of three
  + The program would stall on the first multiple `3`.
  + However, since the first evaluation is comparing to `0`, it will evaluate to `true` and always log `0`.