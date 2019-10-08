// class_records.js

var studentScores = {
  student1: {
    id: 123456789,
    scores: {
      exams: [90, 95, 100, 80],
      exercises: [20, 15, 10, 19, 15],
    },
  },
  student2: {
    id: 123456799,
    scores: {
      exams: [50, 70, 90, 100],
      exercises: [0, 15, 20, 15, 15],
    },
  },
  student3: {
    id: 123457789,
    scores: {
      exams: [88, 87, 88, 89],
      exercises: [10, 20, 10, 19, 18],
    },
  },
  student4: {
    id: 112233445,
    scores: {
      exams: [100, 100, 100, 100],
      exercises: [10, 15, 10, 10, 15],
    },
  },
  student5: {
    id: 112233446,
    scores: {
      exams: [50, 80, 60, 90],
      exercises: [10, 0, 10, 10, 0],
    },
  },
};

var avgScores = function avgScores(exams) {
  var len = exams.length;
  var total = sumScores(exams);
  return total / len;
};

var minScore = function minScore(exam) {
  return exam.reduce( function(previousScore, currentScore) {
    return previousScore < currentScore ? previousScore : currentScore;
  });
}

var maxScore = function maxScore(exam) {
  return exam.reduce( function(previousScore, currentScore) {
    return previousScore > currentScore ? previousScore : currentScore;
  });
}

var sumScores = function sumScores(scores) {
  return total = scores.reduce( function(sum, currentScore) {
    return sum + currentScore;
  })
}

var determinePercent = function determinePercent(examsAvg, exerciseSum) {
  return Math.round((examsAvg * .65) + (exerciseSum * .35));
}

var letterFromPercent = function letterFromPercent(percent) {
  if (percent >= 93) {
    return 'A';
  } else if (percent >= 85) {
    return 'B';
  } else if (percent >= 77) {
    return 'C';
  } else if (percent >= 69) {
    return 'D';
  } else if (percent >= 60) {
    return 'E';
  } else {
    return 'F';
  }
}

var calculateGrade = function calculateGrade(student) {
  var examAverage = avgScores(student.scores.exams);
  var sumOfExercises = sumScores(student.scores.exercises);
  var percentGrade = determinePercent(examAverage, sumOfExercises);
  var letterGrade = letterFromPercent(percentGrade);
  return `${percentGrade} (${letterGrade})`;
}

var orderByExam = function orderByExam(studentExams) {
  var allExams = [];
  var totalExams = studentExams[0].length;
  var i;
  var setOfExams;
  for (i = 0; i < totalExams; i += 1) {
    setOfExams = []
    studentExams.forEach( function(setOfStudentExams) {
      setOfExams.push(setOfStudentExams[i]);
    });
    allExams.push(setOfExams)
  }
  return allExams;
}

var examPerformance = function examPerformance(allExams) {
  var computedExams = allExams.map( function(exam) {
    return { average: avgScores(exam), min: minScore(exam), max: maxScore(exam) };
  });
  return computedExams;
}

var generateClassRecordSummary = function generateClassRecordSummary(scores) {
  var students = Object.keys(scores);
  var listOfGrades = students.map( function(student) {
    return calculateGrade(scores[student]);
  });
  var studentExams = students.map( function(student) {
    return scores[student].scores.exams;
  })
  var allExams = orderByExam(studentExams);
  return { studentGrades: listOfGrades, exams: examPerformance(allExams) };
}

console.log(generateClassRecordSummary(studentScores));

// returns:
// {
//   studentGrades: [ '87 (B)', '73 (D)', '84 (C)', '86 (B)', '56 (F)' ],
//   exams: [
//     { average: 75.6, minimum: 50, maximum: 100 },
//     { average: 86.4, minimum: 70, maximum: 100 },
//     { average: 87.6, minimum: 60, maximum: 100 },
//     { average: 91.8, minimum: 80, maximum: 100 },
//   ],
// }