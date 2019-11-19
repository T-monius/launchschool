// closuresAndPrivateData.js

/* 1. Create a makeCounterLogger function that takes a number as an
      argument and returns a function. When we invoke the returned
      function with a second number, it should count up or down from
      the first number to the second number, logging each number to the
      console:
- Understanding
  + MakeCounterLogger
    * Input
      + Number
    * Output
      + Function
  + Returned function
    * Input
      + number
    * Output
      + Log from the first number to the second

*/

var makeCounterLogger = function makeCounterLogger(startNum) {
  return function loggerCounter(endNum) {
    var i;
    if (startNum < endNum) {
      for (i = startNum; i <= endNum; i += 1) {
        console.log(i);
      }
    } else {
      for (i = startNum; i >= endNum; i -= 1) {
        console.log(i);
      }
    }
  }
}

var countlog = makeCounterLogger(5);
countlog(8);
// 5
// 6
// 7
// 8
console.log('---------------------------')
countlog(2);
// 5
// 4
// 3
// 2
console.log('---------------------------')

/* 2. We'll build a simple todo list program using the techniques we've
      seen in this assignment. Write a makeList function that returns
      a new function that implements a todo list. The returned function
      should have the following behavior:
    - When called with an argument that is not already on the list, it
      adds that argument to the list.
    - When called with an argument that is already on the list, it
      removes the element from the list.
    - When called without arguments, it logs all items on the list. If
      the list is empty, it logs an appropriate message.

  - Undersrtanding:
    + Todo List
      * Behaviours
        + Per argument at invocation
        1. Add item
        2. Remove item
        3. Log items
    + `makeLIst`
      * Input
        + None per example
      * Output
        + New function
    + `list` function
      * Function should encapsulate state
        - Has a `list` variable
        - Array
      * Add to the list
      * Remove from the list
      * Output list
*/

function makeList() {
  var todos = [];
  return function (newItem) {
    if (newItem) {
      if (todos.find( (item) => newItem === item)) {
        todos.splice(todos.indexOf(newItem), 1);
        debugger;
        console.log(`${newItem} removed!`)
      } else {
        todos.push(newItem);
        console.log(`${newItem} added!`)
      }
    } else {
      if (todos.length === 0) {
        console.log('The list is empty.')
      } else {
        todos.forEach( (item) => console.log(item))
      }
    }
  }
};

var list = makeList();
list();
// The list is empty.
list('make breakfast');
// make breakfast added!
list('read book');
// read book added!
list();
// make breakfast
// read book
list('make breakfast');
// make breakfast removed!
list();
// read book