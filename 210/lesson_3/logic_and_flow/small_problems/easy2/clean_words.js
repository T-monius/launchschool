// clean_words.js

function cleanUp(dirtyString) {
  var cleanStr = '';
  for (var i = 0; i < dirtyString.length; i += 1) {
    if (dirtyString[i].match(/[a-z]/gi)) {
      cleanStr += dirtyString[i];
    } else if (cleanStr[cleanStr.length - 1] !== ' ') {
        cleanStr += ' ';
    }
  }
  return cleanStr;
}

console.log(cleanUp("---what's my +*& line?"));    // " what s my line "