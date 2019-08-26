// splitting_string.js

function splitString(string, delimiter) {
  if (!delimiter) {
    console.log('Error: No delimiter')
    return;
  } else if (delimiter === '') {
    for (var i = 0; i <= string.length; i += 1) {
      console.log(string[i]);
    }
  }

  var log_str = '';
  for (var i = 0; i <= string.length - 1; i += 1) {
    if (string[i] === delimiter) {
      console.log(log_str);
      log_str = '';
    } else {
      log_str += string[i];
    }
  }
  if (delimiter) { console.log(log_str)};
}

splitString('abc,123,hello world', ',');
// logs:
// abc
// 123
// hello world

splitString('hello');
// logs:
// ERROR: No delimiter

splitString('hello', '');
// logs:
// h
// e
// l
// l
// o

splitString('hello', ';');
// logs:
// hello

splitString(';hello;', ';');
// logs:
//  (this is a blank line)
// hello