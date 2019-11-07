// assessmentQuestion.js

var groupDuplicates = function groupDuplicates(repeatArr) {
  return repeatArr;
};
  
console.log(groupDuplicates([1, 1, 2, 3, 2, 3]))                       // -> [[1, 1], [2, 2], [3, 3]] 

console.log(groupDuplicates(['a', 1, undefined, 'b', null, false]))    // -> [['a'], [1], [undefined], ['b'], [null], [false]]

console.log(groupDuplicates(['a', 1, 'a', undefined, 'b', null, false]))    // -> [['a', 'a'], [1], [undefined], ['b'], [null], [false]]

console.log(groupDuplicates(['a', 1, 'a', undefined, 'b', null, false]))    // -> [['a', 'a'], [1], [undefined], ['b'], [null], [false]]

console.log(groupDuplicates([]))    // -> []