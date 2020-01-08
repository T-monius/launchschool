## JS230 DOM and Asynchronous Programming with JavaScriptEvent > Driven and Asynchronous Programming > Asynchronous Execution with setTimeout > Practice Problems

### Problem 1
- Write a JavaScript function named `delayLog` that loops through the numbers from 1 to 10, and logs each number after that number of seconds. It should log `1` after 1 second, `2` after 2 seconds, etc.

### Understanding
- `delayLog()`
  + Input
    * None
  + Output
    * Logs numbers 1 to 10
    * Delay
      - Between each number

### Examples / Test Cases
```js
> delayLog();
1  // 1 second later
2  // 2 seconds later
3  // 3 seconds later
4  // etc...
5
6
7
8
9
10
```

### Data Structures
- Number

### Algorithm
- Functional Abstracions
  + Iteration
- Implementation
  + Helper function
    * Logs input number
  + Declare a variable set to 1
  + Iterate
    * Call `setTimeout` with the number and itself times `1000`

### Problem 2
- In what sequence will the JavaScript runtime run the following lines of code? Number them from 1-8 to show the order of execution.
```js
setTimeout(function() {   // 1
  console.log('Once');    // 2
}, 1000);

setTimeout(function() {   // 3
  console.log('upon');    // 4
}, 3000);

setTimeout(function() {   // 5
  console.log('a');       // 6
}, 2000);

setTimeout(function() {   // 7
  console.log('time');    // 8
}, 4000);

// LS Solution

setTimeout(function() {   // 1
  console.log('Once');    // 5
}, 1000);

setTimeout(function() {   // 2
  console.log('upon');    // 7
}, 3000);

setTimeout(function() {   // 3
  console.log('a');       // 6
}, 2000);

setTimeout(function() {   // 4
  console.log('time');    // 8
}, 4000);
```

### Problem 3
- In what sequence does the JavaScript runtime run the functions q, d, n, z, s, f, and g in the following code?
```js
setTimeout(function() {
  setTimeout(function() {
    q();
  }, 15);

  d();

  setTimeout(function() {
    n();
  }, 5);

  z();
}, 10);

setTimeout(function() {
  s();
}, 20);

setTimeout(function() {
  f();
});

g();
```

### Understanding
- `f`, `g`,`d`, `z`, `n`, `s`, `q`

### LS Solution
- g, f, d, z, n, s, q
  + Notice that g still comes before f even though the timeout duration defaults to 0. The reason for this behavior is that delays may be longer than specified.

  + Another thing of note is that setTimeout's behavior can be unpredictable when the differences in duration are tiny. Consequently, the sequence you get may be different than the solutions.

### Problem 4
- Write a function named afterNSeconds that takes two arguments: a callback and a time duration in seconds. The function should wait for the indicated period, then invoke the callback function.

### Understanding
- Function
  + `afterNSeconds`
  + Asynchonous
  + Input
    1. callback
    2. time duration
      * Seconds
  + Output
    * Callback execution
    * Afer duration
  + Mirros `setTimeout`
    * Difference, seconds not milleseconds

### Algorithm
- Invoke `setTimeout`
  + Pass the callback
  + Secondary input multiplied by `1000`
