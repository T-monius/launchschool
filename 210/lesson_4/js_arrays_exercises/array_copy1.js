// array_copy1.js

// Read through the code shown below. What does it log to the console at lines
// 5 and 8?

/* `pop` mutates the caller, so a reference to `myOtherArray` reflects it
   storing `[1, 2, 3]` since the array it points to on line 5 was mutated.

   The final reference to `myOtherArray` still shows its elements as
    `[1, 2, 3]`. The variable `myArray` was re-assigned but the object it
    originally stored was not modified. That is the object `myOtherArray`
    references. */

var myArray = [1, 2, 3, 4];
var myOtherArray = myArray;

myArray.pop();
console.log(myOtherArray);

myArray = [1, 2];
console.log(myOtherArray);