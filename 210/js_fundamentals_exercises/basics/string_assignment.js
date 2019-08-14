// string_assignment.js

// Take a look at the following code:

var name = 'Bob';
var saveName = name;
name = 'Alice';
console.log(name, saveName); //=> 'Alice' then 'Bob'

/* What does this code log to the console? Think about it for a moment before
   continuing. */

var name = 'Bob';
var saveName = name;
name.toUpperCase();
console.log(name, saveName); //=> 'BOB' then 'Bob'

// What does this code log? Can you explain these results?
/* Strings are immutable. The value returned by `toUpperCase` must be stored in
   a new variable or reassigned to `name` in order for the modification to be
   represented further along in the program execution. */