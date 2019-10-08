## Practice Problems: Class Records Summary

### Understanding
- Terms:
  + Term
  + Faculty
  + Students
  + Score
  + Exam
    * 4 per term
    * Maximum Score = 100
  + Exercise
    * Maximum Score = 100
    * Varied max score per exam
    * Varied per term
  + Summary
  + Weight
- Determinging a grade:
  1. Avg of four exams
  2. Sum all exercises
  3. Apply weights
    + Exams are 65%
    + Exercises are 35%
  4. Compute final percent grade
  5. Determine Letter grade
- `studentScores`
  + Object
  + keys: student
  + values: Object
    * keys: `id`, `exams`, `exercises`
    * values: number, array, array

- Functional Abstraction
  + Getting Student grade: Map
  + Computing Exam Data: Reduce

### Task
- Given this information, implement a function that takes a studentScores object and returns a class record summary object.

  1. Compute the student's average exam score: (90 + 80 + 95 + 71) / 4 = 84
  2. Compute the student's total exercise score: 20 + 15 + 40 = 75
  3. Apply weights to determine the final percent grade: 84 * .65 + 75 * .35 = 80.85
  4. Round the percent grade to the nearest integer: 81
  5. Lookup the letter grade in the table above: C
  6. Combine the percent grade and letter grade: "81 (C)"

### Implementation
- Get 'students' from `studentScores` as an array of keys (`Object.keys`)
- Map the 'students'
  + Access `studentScores`
  + `calculateGrade`
    * `avgScores`
      - Reduce
      - Divide by 4
    * `sumScores`
    * `determinePercent`
    * `letterGrade`, uses switch
    * return percent and letter grade in a string
- Exam performance
  + Map students to exams (`studentExams`)
  + From `studentExams` to `allExams`
    * Iterate (technically transformationß)
      - Push the exam at index to a new array `eachExam`
  + Transform each exam to an object
    * Set each average for each exam (`avgScores`)
    * Reduce to find the min
    * Reduce to find the max
    * Return above info in an Object
  + return an array of exam performance objects