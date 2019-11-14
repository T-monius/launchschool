var me = {
  firstName: 'John',
  lastName: 'Doe',
};

function fullName(person) {
  console.log(person.firstName + ' ' + person.lastName);
}

// fullName(me);       // => John Doe

var friend = {
  firstName: 'Jane',
  lastName: 'Smith',
}

// fullName(friend);   // => Jane Smith

var mother = {
  firstName: 'Amber',
  lastName: 'Doe',
}

var father = {
  firstName: 'Shane',
  lastName: 'Doe',
}

// fullName(mother);  // => Amber Doe
// fullName(father);  // => Shane Doe

// var people = [];

// people.push(me);
// people.push(friend);
// people.push(mother);
// people.push(father);

// function rollCall(collection) {
//   collection.forEach(fullName);
// }

// rollCall(people);

var people = {
  collection: [me, friend, mother, father],
  index: 0;

  fullName: function(person) {
    console.log(person.firstName + ' ' + person.lastName);
  },

  rollCall: function() {
    this.collection.forEach(this.fullName);
  },

  get: function(person) {
    if (this.isInvalidPerson(person)) {
      return;
    }

    return this.collection[this.getIndex(person)];
  }

  update: function(person) {
    if (this.isInvalidPerson(person)) {
      return;
    }

    var existingPersonId = this.getIndex(person);
    if (existingPersonId === -1) {
      this.add(person);
    } else {
      this.collection[existingPersonId] = person;
    }
  },

  add: function(person) {
    if (this.isInvalidPerson(person)) {
      return;
    }

    if (this.collection.length === 0) {
      index;
    } else {
      index += 1;
    }

    this.collection.splice(index, 0, person);
  },

  getIndex: function(person) {
    var index = -1;
    this.collection.forEach(function(comparator, i) {
      if (comparator.firstName === person.firstName &&
          comparator.lastName === person.lastName) {
        index = i;
      }
    });
    return index;
  },

  isInvalidPerson: function(person) {
    return typeof person.firstName !== 'string' &&
           typeof person.lastName !== 'string';
  }

  remove: function(person) {
    var index;
    if (this.isInvalidPerson(person)) {
      return;
    }

    index = this.getIndex(person);
    if (index === -1) {
      return;
    }

    this.collection.splice(index, 1);
  },
};

// people.remove({ firstName: 'Jane', lastName: 'Smith'});

console.log(people.getIndex(friend));     // => 1
people.remove(friend);
console.log(people.getIndex(friend));     // => -1