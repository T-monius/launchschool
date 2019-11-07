// assessmentQuestion.js

var groupDuplicates = function groupDuplicates(repeatArr) {
  var groups = [];

  repeatArr.forEach( function(element) {
    if (groups.length < 1) {
      groups.push([element]);
    } else if (groups.some( (subArray) => subArray.length > 0 && subArray[0] === element)) {
      groups.forEach( function(innerArr) {
        if (innerArr[0] === element) {
          innerArr.push(element);
        }
      })
    } else {
      groups.push([element]);
    }
    })

  return groups;
};
  
console.log(groupDuplicates([1, 1, 2, 3, 2, 3]))                       // -> [[1, 1], [2, 2], [3, 3]] 

console.log(groupDuplicates(['a', 1, undefined, 'b', null, false]))    // -> [['a'], [1], [undefined], ['b'], [null], [false]]

console.log(groupDuplicates(['a', 1, 'a', undefined, 'b', null, false]))    // -> [['a', 'a'], [1], [undefined], ['b'], [null], [false]]

console.log(groupDuplicates(['a', 1, 'a', undefined, 'b', null, false]))    // -> [['a', 'a'], [1], [undefined], ['b'], [null], [false]]

console.log(groupDuplicates(['a', 1, 'a', undefined, 'b', undefined, 'undefined', undefined]))
    // -> [['a', 'a'], [1], [undefined, undefined, undefined], ['b'], ['undefined'], [false]]

console.log(groupDuplicates([]))    // -> []