## Pomodoro

### Understanding
- Input
  + None
- Output
  + Console logs intended:
    * `'Work.'`
    * ``...${minutes}``
    * `'Pling'`
    * ``Rest for ${rest} minutes``
    * Repeat several times
    * `'Done!'`

### Current Implementation
- Never prints the call to `minutes` on line 11 (13 in my editor)
- `minutes` is apparently incremented
  + However, the while loop is not executing
  + Ah, I believe it's incremented in the `if` on line 26 (28 in my editor)
- Is this a matter of 'hoisting'?
  + `minutes` is `undefined` when `pomodoro` is executed.
  + It's then assigned to `30` later on in the method
    - Therefore, the value of `minutes` is always greater than `25`, so the `while` is never executed

### Try
- See what logs when calling to `minutes` outside of the while
- Re-writing the hoisted version of the code
  + Or, simply re-order the assignments to after the declarations

### My Implementation
- Move the external variables to named method parameters; call the Function with the values
  + The 'AirBnb Style Guide' suggests avoiding side-effects
  + I'm having a hard time isolating why the `minutes` variable isn't assigned even when accounting for hoisting

### LS Implementation
- There is a redeclaration of the `minutes` variable before the recursive call to `pomodoro`
  + Just change this to a reassignment and don't redeclare it
  + I also changed the redeclaration

### Task
- The following code demonstrates the Pomodoro technique. Although it seems to work in principle, it never prints the minute count from line 11. What is wrong?
```js
var tasks = 10;
var checkmarks = 0;
var sessions = 0;
var minutes = 0;

function pomodoro() {
  console.log('Work.');

  while (minutes < 25) {
    minutes += 1;
    console.log('...' + minutes);
  }

  console.log('PLING!');

  sessions += 1;
  checkmarks += 1;

  if (checkmarks === tasks) {
    console.log('Done!');
    return;
  }

  var rest;
  if (sessions === 4) {
    sessions = 0;
    rest = 30;
  } else {
    rest = 5;
  }

  console.log('Rest for ' + rest + ' minutes.');

  var minutes = 0;          // The problem
  pomodoro();
}

pomodoro();
```