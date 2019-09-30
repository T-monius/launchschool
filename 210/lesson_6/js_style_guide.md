## JavaScript Style Guide

- To avoid writing problem code from the start, though, you need developer education. Software teams and projects often adopt a "style guide" that describes how they wish to write code with a specific programming language.
  +  Airbnb JavaScript Style Guide for ES6
  + Ninja code "style guide"

### Practice Problems
- Identify the code that violates the Airbnb JavaScript style guide, and update the code to fix the issues you identify. There may be more than one issue in each code snippet.
1. 
```js
var title = "The Three-Body Problem";
```
  + We are declaring a variable with `var`
  + Prefer `let` or `const`
  + One could also argue that the name is vague
  + Also, single quotes ought to be used for strings
```js
// correction
let bookTitle = 'The Three-Body Problem'
```
  + LS solution only changes the single quotes
2. 
```js
var title = 'The Three-Body Problem',
    author = 'Cixin Liu',
    page_count = 400;
```
  + Use a `const` or `let` for each variable (this may be ES6, so perhaps `var`)
  + Avoid underscores for variables names
    * Use camelCase
  + Do not chain variable declarations
```js
var title = 'The Three-Body Problem';
var author = 'Cixin Liu';
var pageCount = 400;
```
3. 
```js
var completed = lastPageRead == 400;
```
  + Do not use non-strict comparison operator
```js
var completed = lastPageRead === 400;
```
4.
```js
if (finishedBook())
  console.log('You have finished reading this book');
```
  + Use brackets for multi-line conditional expressions
  + For a single expression write on one line without the brackets
```js
if (finishedBook()) console.log('You have finished reading this book');
```
5.
```js
function read(pages) {
      console.log('You started reading.');
      for (var i=0; i<pages; i++) {
              var message = 'You read page '+i;
              console.log(message);
      }
}

read(400);
```
  + Don't use iterators
  + Don't use incrementers
  + Space variables and operators
  + Use template literals for programmatically built strings (this might be ES6)
    * In which case, use explicit type coercion
  + Don't redeclare a variable
  + Declare variables at the top of a scope
  + 2 space tabs on each line
```js
var read = function read(pages) {
  var i;
  var message;

  console.log('You started reading.');
  for (i = 0; i < pages; i += 1) {
    message = `You read page ${i} `;
    console.log(message);
  }
}

read(400);
```
  + LS solution pointed out the 'named function expression'
    * How could I miss this when I love it so much, doh!?