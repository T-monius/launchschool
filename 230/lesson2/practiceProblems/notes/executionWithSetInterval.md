## JS230 DOM and Asynchronous Programming with JavaScriptEvent > Driven and Asynchronous Programming > Execution with setInterval > Practice Problems

### Problem 1
- Write a function named startCounting that logs a number to the console every second, starting with 1. Each number should be one greater than the previous number.

### Understanding
- Function
  + `startCounting`
  + Input
    * None
  + Output
    * Logs number
    * Sequentially greater by `1`
- `setInterval` allows for this consecutive logging

### Algorithm
- Set a counter
- Declare a logging function (closure)
  + Increments the counter
  + Logs the counter
- Invoke `setInvertal` to invoke the callback every second

### Problem 2
- Extend the code from the previous problem with a stopCounting function that stops the logger when called.

### Understanding
- Function
  + `stopCounting`
  + Input
    * None
  + Output
    * Side-effects
    * Clears the timer
