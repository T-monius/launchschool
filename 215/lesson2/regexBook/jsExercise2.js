// jsExercise2.js

/** Write a method that returns all of the fields in a haphazardly formatted
    string. A variety of spaces, tabs, and commas separate the fields, with
    possibly multiple occurrences of each delimiter. */

var fields = function fields(str) {
  return str.split(/[\s,]+/);
}

console.log(fields("Pete,201,Student"));
// -> ['Pete', '201', 'Student']

console.log(fields("Pete \t 201    ,  TA"));
// -> ['Pete', '201', 'TA']

console.log(fields("Pete \t 201"));
// -> ['Pete', '201']