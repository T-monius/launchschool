// watchOthersCode3.js

const BLOCK_PAIRS = { 'B':'O', 'O':'B', 'X':'K', 'K': 'X', 'D':'Q', 'Q':'D',
                      'C':'P', 'P':'C', 'N':'A', 'A':'N', 'G':'T', 'T':'G',
                      'R':'E', 'E':'R', 'F':'S', 'S':'F', 'J':'W', 'W':'J',
                      'H': 'U', 'U':'H', 'V':'I', 'I':'V', 'L':'Y', 'Y':'L',
                      'Z':'M', 'M':'Z' }

const isBlockWord = function isBlockWord(str) {
  if (/[^a-z]/ig.test(str)) { return false }
  let blockPairs = { ...BLOCK_PAIRS };
  let upcaseInput = str.toUpperCase();
  let i;
  let currentChar;
  let pairChar;

  for (i = 0; i < upcaseInput.length; i += 1) {
    currentChar = upcaseInput[i];
    pairChar = blockPairs[currentChar];
    if (blockPairs[currentChar]) {
      delete blockPairs[currentChar];
      delete blockPairs[pairChar];
    } else {
      return false
    }
  }
  return true;
};

console.log(isBlockWord('BATCH'));      // true
console.log(isBlockWord('BUTCH'));      // false
console.log(isBlockWord('jest'));       // true
console.log(isBlockWord('1jest'));       // false