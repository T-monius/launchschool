// variables_and_numbers.js

/* 1. Declare a variable named `numerator`` and set it to 10. */

var numerator = 10;

/* 2. Declare a variable named denominator and set it to 2. */

var denominator = 2;

/* 3. Declare a variable named answer and set it to the result of numerator
      divided by denominator. Log the value of answer (it should be 5). */

var answer = numerator / denominator;
console.log(answer);

// 4. Declare a variable named incrementer and set it to 1.
var incrementer = 1;

// 5. Declare a variable named start and set it to incrementer.
var start = incrementer;

// 6. Declare variables named end and difference. Leave them undefined.
var end;
var difference;

/* 7. Increment the incrementer variable by 1 three times using the
      self-addition notation. */
incrementer += 1;
incrementer += 1;
incrementer += 1;

/* 8. Increment the incrementer variable by 1 twice using increment operator
      shorthand. */
incrementer ++;
incrementer ++;

/* 9. Set the value of end to incrementer and the value of difference to end
      minus start. Log the value of end, which should be 6. Log the value of
      difference, which should be 5. */
end = incrementer;
difference = end - start;
console.log(end);
console.log(difference);

/* 10. Write the arithmetic statement that sets a variable answer to the result
       of 11 plus 31 multiplied by 3 as one statement, then log the result.
       Your result should be 126. If you get a different result, you may need
       to use some parentheses to change the order of operations: you want to
       perform the addition first, then the multiplication. */
answer = (11 + 31) * 3;
console.log(answer);