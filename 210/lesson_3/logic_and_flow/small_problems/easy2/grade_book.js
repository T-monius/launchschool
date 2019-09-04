// grade_book.js

function getGrade(score, score1, score2) {
  var avg = getAvg(score, score1, score2);
  var letterGrade;
  if (avg >= 90) {
    letterGrade = 'A';
  } else if (avg < 90 && avg >= 80) {
    letterGrade = 'B';
  } else if (avg < 80 && avg >= 70) {
    letterGrade = 'C';
  } else if (avg < 70 && avg >= 60) {
    letterGrade = 'D';
  } else {
    letterGrade = 'F';
  }
  return letterGrade;
}

function getAvg(score, score1, score2) {
  return (score + score1 + score2) / 3;
}

console.log(getGrade(95, 90, 93));    // "A"
console.log(getGrade(50, 50, 95));    // "D"