## Stuck On Page 18

### Understanding
- Operates on externally scoped variables
  * Bad style
  * Shoould not have side-effects
- Recursive

### Current Implementation
- Since the solution is recursive, and function scope is at work, redeclaring `currentPage` inside `read` results in an infinite loop.

### Fixes
1. Declare `currentPage` outside of `read`
2. Use better style
  + Don't have side-effects
  + Pass the externally scoped variables to named function parameters
    * Can take advantage of variable shadowing in this case to use the same names internally and externally
    * Better, use different names inside and outside the function

### Task
- The following code is a simplified (and not so serious) model of how we read a software development book. But running this code results in a stack overflow. What is wrong?
```js
var totalPages = 364;
var energy = 100;

function read() {
  var currentPage = 1;

  while (energy > 0 && currentPage < totalPages) {
    currentPage += 1;
    energy -= (5 + currentPage * 0.1);
  }

  console.log('Made it to page ' + String(currentPage) + '.');

  // Drink a cup of coffee.
  energy = 100;

  // Continue reading.
  if (currentPage < totalPages) {
    read();
  } else {
    console.log('Done!');
  }
}

read();
```