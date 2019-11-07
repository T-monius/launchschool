// partitionLabels.js


var partitionLabels = function partitionLabels(str) {
  var labels = [];
  var bound = 0;
  var lastOccurrence;
  var i = 0;

  while (i < str.length) {
    if (i <= bound) {
      lastOccurrence = str.lastIndexOf(str[i]);
      if (lastOccurrence > bound) {
        bound = lastOccurrence;
      }
      i += 1;
    } else {
      labels.push(bound + 1);
      str = str.slice(bound + 1);
      bound = 0;
      i = 0;
    }
    if (i === str.length) {
      labels.push(bound + 1);
    }
  }
  return labels;
};

console.log(partitionLabels("ababcbacadefegdehijhklij"));         // [9,7,8]
console.log(partitionLabels("defegdehijhklij"));                  // [7, 8]
console.log(partitionLabels("ababcbacadefegehijhklij"));          // [9,1,5,8]
console.log(partitionLabels("a"));                                // [1]
console.log(partitionLabels(""));                                 // []