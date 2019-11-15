// student.js

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
foo = createStudent('Foo', '1st');
foo.info();                           //=> 'Foo is a 1st year student'
foo.listCourses();       //=> []
foo.addCourse({ name: 'Math', code: 101 });
foo.addCourse({ name: 'Advanced Math', code: 102 });
foo.listCourses();
//=> [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
foo.addNote(101, 'Fun course');
foo.addNote(101, 'Remember to study for algebra');
foo.viewNotes();
//=> "Math: Fun Course; Remember to study for algebra"
foo.addNote(102, 'Difficult subject');
foo.viewNotes();
//=> "Math: Fun Course; Remember to study for algebra"
//=> "Advance Math: Difficult Subject"
foo.updateNote(101, 'Fun course');
foo.viewNotes();
//=> "Math: Fun Course"
//=> "Advance Math: Difficult Subject"