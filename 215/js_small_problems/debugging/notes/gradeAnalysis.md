## JS Small Problems: Debugging - Grade Analysis

### Understanding
- `avarage`
  + Input
    * An array of integers
  + Output
    * A number
    * Sum divided by length
      - No consideration to accounting for decimal
- `median`
  + `sort` is called on the input array
    * Called without a callback
    * Without a callback, `sort` sorts after String coercion

### Examples / Test Cases
```js
function average(nums) {
  var sum = nums.reduce(function(total, num) {
    return total + num;
  });

  return sum / nums.length;
}

function median(nums) {
  var median;
  var length = nums.length;

  nums.sort();

  if (length % 2 === 0) {
    median = average([nums[(length / 2) - 1], nums[length / 2]]);
  } else {
    median = nums[Math.floor(length / 2)];
  }

  return median;
}

// Tests

var quarter1ExamScores = [89, 72, 100, 93, 64, 97, 82, 87, 90, 94];
var quarter2ExamScores = [76, 91, 89, 90, 91, 67, 99, 82, 91, 87];
var quarter3ExamScores = [99, 91, 88, 72, 76, 64, 94, 79, 86, 88];
var quarter4ExamScores = [100, 94, 73, 88, 82, 91, 97, 99, 80, 84];

// should all log 'true':
console.log(average(quarter1ExamScores) === 86.8);
console.log(average(quarter2ExamScores) === 86.3);
console.log(average(quarter3ExamScores) === 83.7);
console.log(average(quarter4ExamScores) === 88.8);

console.log(median(quarter1ExamScores) === 89.5);
console.log(median(quarter2ExamScores) === 89.5);
console.log(median(quarter3ExamScores) === 87);
console.log(median(quarter4ExamScores) === 89.5);
```

### Implementation
- Data Structures

- Functional Abstractions

- Algorithm

### Task
- Professor Graham wrote some simple code to help him determine the average and median scores on each of his quarterly exams, but some of the test cases are failing. Figure out why, and write the code necessary for the program to work as expected.