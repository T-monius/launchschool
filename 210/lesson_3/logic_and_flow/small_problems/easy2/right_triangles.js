// right_triangles.js

function multiplyCharacter(char, times) {
  var repeatedChars = '';
  for (var i = 0; i < times; i += 1) {
    repeatedChars += char;
  }
  return repeatedChars;
}

function triangle(limit) {
  var spaces;
  var asterisks;
  var i = 0;

  while (i < limit) {
    i += 1;
    spaces = multiplyCharacter(' ', limit - i);
    asterisks = multiplyCharacter('*', i);
    console.log(spaces + asterisks);
  }
}

triangle(5);
triangle(9);