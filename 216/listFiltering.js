// listFiltering.js

// Code Wars kata 7kyu: JS List Filtering

const filter_list = function filter_list(arr) {
  return arr.filter( (element) => element === Number(element));
};

console.log(filter_list([1,2,'a','b'])) == [1,2]
console.log(filter_list([1,'a','b',0,15])) == [1,0,15]
console.log(filter_list([1,2,'aasf','1','123',123])) == [1,2,123]