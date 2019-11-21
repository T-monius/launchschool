## Practice Problems - Lesson 4: Garbage Collection

### Problem 1
- Is JavaScript a garbage-collected language, and if so, what does this entail?
  + Answer
    * Yes. There is no need to manually allocate memory and release it when creating variables. JS 'automatically' allocates memory when a variable is declared and assigned and releases it when the variable is no longer in use.

### Problem 2
- Consider the code below:
```js
var myNum = 1;

function foo() {
  var myStr = 'A string';
  // what is eligible for GC here?
}

foo();

// what is eligible for GC here?

// more code
```
- Are either of the values 1 or "A string" eligible for garbage collection on line 5? What about on line 10?
  + My Answer:
    * The value `1` is eligible for GC on line 5 assuming no further references are made to it later on in the code since there are no references to the value.
    * On line 10, the value `'A string'` is eligible for GC since the function `foo()` has completed its execution, and there are no further references at this point.
  + LS Answer:
    * Neither value is eligible for garbage collection on line 5, while "A string" is eligible for garbage collection on line 10. In the context of this code snippet, the only references to these values are provided by the variables myNum and myStr. Since myNum is a global variable, its reference to 1 persists at every point in the code after assignment, but since myStr is function scoped, the variable's reference to "A string" is broken after the function execution is complete.

### Problem 3
- In the code below, is the value referenced by outerFoo eligible for garbage collection on line 10?
```js
var outerFoo;

function bar() {
  var innerFoo = 0;
  outerFoo = innerFoo;
}

bar();

// can outerFoo's 0 be garbage collected here?

// more code
```
  + Answer:
    * No? Because we've assigned it to a global variable which may be used later? CORRECT

### Problem 4
- Consider the code below:
```js
function makeEvenCounter() {
  var index = 0;
  return function() {
    return index += 2;
  };
}

var evenCounter = makeEvenCounter();

// is 0 eligible for GC here?

// more code
```
Is 0 eligible for garbage collection on line 10?

  + Answer:
    * No, because it's associated with a closure which has been stored in a global variable and whose invocation can occure in any future time.