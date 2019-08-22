// student_grade.js

var score;
var score1;
var score2;
var scores;
var avg;
var grade;
var rlSync = require('readline-sync');
var msg;

function getScore(message) {
  return rlSync.question(message);
}

function compileNScores(n) {
  var scoresArray = [];
  for (var i = 0; i <= n - 1; i += 1) {
    msg = `Enter score ${i + 1}: `;
    scoresArray[i] = Number(getScore(msg));
  }
  return scoresArray;
}

function calculateAverage(scoresArray) {
  var total = 0;
  scoresArray.forEach( score => total += score );
  return total / scoresArray.length;
}

function getGrade(avg) {
  var grade;
  if (avg >= 90) {
    grade = 'A'
  } else if (avg >= 70 && avg < 90) {
    grade = 'B'
  } else if (avg >= 50 && avg < 70) {
    grade = 'C'
  } else {
    grade = 'F'
  }
  return grade;
}

scores = compileNScores(5);
avg = calculateAverage(scores);
grade = getGrade(avg);

msg = `Based on the average of your 3 scores your letter grade is "${grade}"`;
console.log(msg);