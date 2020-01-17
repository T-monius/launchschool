## JS230 - Front-end Development with JavaScript Events and Asynchronous ProgrammingRandomizer

### Task
- Write a randomizer function that accepts n callbacks and calls each callback at some random point in time between now and 2 * n seconds from now. For instance, if the caller provides 5 callbacks, the function should run them all sometime within 10 seconds.

- While running, randomizer should log the elapsed time every second: 1, 2, 3, ..., 2 * n.

### Understanding
- `randomizer`
  + Input
    * `n` callbacks
  + Output
    * Secong counter
    * `n` callback executions
- Executes callbacks within `2 * n`

### Examples / Test Cases
```js
function callback1() {
  console.log('callback1');
}

function callback2() {
  console.log('callback2');
}

function callback3() {
  console.log('callback3');
}

function randomizer(callbacks) {
  // Your code here.
}

randomizer(callback1, callback2, callback3);

// Output:
// 1
// 2
// "callback2"
// 3
// "callback3"
// 4
// 5
// "callback1"
// 6
```

### Data Structures
- Array

### Algorithm
- Functional Abstractions
  + Iteration
- Implementation
  + Set an array to `arguments` converted to an Array
  + Set an empty array for times set
  + Iterate the callbacks
    * Get a random number from `0` to `n` while the random number is in the set of already set timers
    * Add an event listener for the callback at that `number * 1000`
    * Push the random index to the set of referenced indices
  + Set a counter
    * Set a counter variable
    * Set interval every second
    * If counter is greater than 2 `n`, clear the interval
    * Increment counter
    * Output counter
