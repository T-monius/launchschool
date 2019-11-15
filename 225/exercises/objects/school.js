// school.js

var createStudent = function createStudent(name, year) {
  return {
    name: name,
    year: year,
    courses: [],
    info: function() {
      console.log(`${this.name} is a ${year} year student`);
    },
    listCourses: function() {
      return this.courses;
    },
    addCourse: function(course) {
      this.courses.push(course);
    },
    addNote: function(code, note) {
      desiredCourse = this.courses.find( function(course) {
        return course.code === code;
      })
      if (desiredCourse.note) {
        desiredCourse.note += '; ' + note;
      } else {
        desiredCourse.note = note;
      }
    },
    viewNotes: function() {
      this.courses.forEach( function(course) {
        if (course.note) {
          console.log(`${course.name}: ${course.note}`);
        }
      })
    },
    updateNote: function(code, note) {
      desiredCourse = this.courses.find( function(course) {
        return course.code === code;
      })
      desiredCourse.note = note;
    }
  };
};

var school = {
  students: [],
  addStudent: function(name, year) {
    var student;
    var possibleYears = ['1st', '2nd', '3rd', '4th', '5th'];
    if (possibleYears.includes(year)) {
      student = createStudent(name, year);
      this.students.push(student);
    } else {
      console.log('Invalid Year');
    }
    return student;
  },
  enrollStudent: function(studentName, courseName, courseCode) {
    var desiredStudent = this.students.find( function(student) {
      return student.name === studentName;
    });
    desiredStudent.addCourse({ name: courseName, code: courseCode })
  },
  addGrade: function(studentName, courseName, grade) {
    var desiredStudent = this.students.find( function(student) {
      return student.name === studentName;
    });
    var desiredCourse = desiredStudent.courses.find( function(course) {
      return course.name === courseName;
    });
    desiredCourse.grade = grade;
  },
  getReportCard: function(studentArg) {
    var desiredStudent = this.students.find( function(student) {
      return student.name === studentArg.name;
    });
    desiredStudent.courses.forEach( function(course) {
      console.log(`${course.name}: ${course.grade || 'In progress'}`);
    });
  },
  courseReport: function(courseName) {
    console.log(`=${courseName} Grades=`);
    var courseGrades = [];
    this.students.forEach( function(student) {
      var desiredCourse = student.courses.find( function(course) {
        return course.name === courseName;
      });
      if (desiredCourse) {
        console.log(`${student.name}: ${desiredCourse.grade}`)
        courseGrades.push(desiredCourse.grade);
      }
    })
    console.log('---');
    var avg = courseGrades.reduce( function(sum, grade) {
      return sum + grade;
    }, 0) / courseGrades.length;
    console.log(`Course Average: ${avg}`);
  },
};

var foo = school.addStudent('foo', '3rd');
school.enrollStudent('foo', 'Math', 101);
school.enrollStudent('foo', 'Advanced Math', 102);
school.enrollStudent('foo', 'Physics', 202);
school.addGrade('foo', 'Math', 95);
school.addGrade('foo', 'Advanced Math', 90);
var bar = school.addStudent('bar', '1st');
school.enrollStudent('bar', 'Math', 101);
school.addGrade('bar', 'Math', 91);
var qux = school.addStudent('qux', '2nd');
school.enrollStudent('qux', 'Math', 101);
school.enrollStudent('qux', 'Advanced Math', 102);
school.addGrade('qux', 'Math', 93);
school.addGrade('qux', 'Advanced Math', 90);
school.getReportCard(foo);
school.courseReport('Math');
school.courseReport('Advanced Math');
school.courseReport('Physics');