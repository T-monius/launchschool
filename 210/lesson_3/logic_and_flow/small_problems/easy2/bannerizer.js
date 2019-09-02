// bannerizer.js

function multiplyCharacter(char, times) {
  var repeatedChars = '';
  for (var i = 0; i < times; i += 1) {
    repeatedChars += char;
  }
  return repeatedChars;
}

function logOuter(len) {
  var lineStr = multiplyCharacter('-', len);
  console.log(`+-${lineStr}-+`)
}

function logInner(len) {
  var cushionStr = multiplyCharacter(' ', len);
  console.log(`| ${cushionStr} |`)
}

function logInBox(str) {
  var strLength = str.length;
  logOuter(strLength);
  logInner(strLength);
  console.log(`| ${str} |`);
  logInner(strLength);
  logOuter(strLength);
}

logInBox('To boldly go where no one has gone before.');
logInBox('');