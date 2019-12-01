## JS225 Object Oriented JavaScript > Object Creation Patterns - Classical Object Creation

### Task
- Implement the following diagram using the pseudo-classical approach. Subclasses should inherit everything from the superclass and not just the methods. Reuse the constructors of the superclass when implementing a subclass.
- For the methods, you can have it log out anything you want.

### Understanding
- Hierarchy of classes
  + 'is a' relationships
  + Delegation
- Use Pseudo-Classical approach
  + Constructors
  + Delegate through the `prototype` property of the superclass / parent object
  + Inherit everything
    * Invoke the constructor to assign the `prototype` (v. using `
    Object.create`)
  + Constructor
    * Use superclass / parent constructor
    * How do I add to an existing constructor?

```js
var person = new Person('foo', 'bar', 21, 'gender');
console.log(person instanceof Person);     // logs true
person.eat();                              // logs 'Eating'
person.communicate();                      // logs 'Communicating'
person.sleep();                            // logs 'Sleeping'
console.log(person.fullName());            // logs 'foo bar'

var doctor = new Doctor('foo', 'bar', 21, 'gender', 'Pediatrics');
console.log(doctor instanceof Person);     // logs true
console.log(doctor instanceof Doctor);     // logs true
doctor.eat();                              // logs 'Eating'
doctor.communicate();                      // logs 'Communicating'
doctor.sleep();                            // logs 'Sleeping'
console.log(doctor.fullName());            // logs 'foo bar'
doctor.diagnose();                         // logs 'Diagnosing'

var graduateStudent = new GraduateStudent('foo', 'bar', 21, 'gender', 'BS Industrial Engineering', 'MS Industrial Engineering');
// logs true for next three statements
console.log(graduateStudent instanceof Person);
console.log(graduateStudent instanceof Student); 
console.log(graduateStudent instanceof GraduateStudent);
graduateStudent.eat();                     // logs 'Eating'
graduateStudent.communicate();             // logs 'Communicating'
graduateStudent.sleep();                   // logs 'Sleeping'
console.log(graduateStudent.fullName());   // logs 'foo bar'
graduateStudent.study();                   // logs 'Studying'
graduateStudent.research();                // logs 'Researching'
```
