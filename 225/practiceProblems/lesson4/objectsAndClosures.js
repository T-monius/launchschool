// objectsAndClosures.js

/* 1. Reimplement makeList, so that it returns an Object that
      provides the interface shown above, including add, list, and
      remove methods.

> var list = makeList();
> list.add('peas');
= peas added!
> list.list();
= peas
> list.add('corn');
= corn added!
> list.list();
= peas
= corn
> list.remove('peas');
= peas removed!
> list.list();
= corn
*/

function makeList() {
  var todos = [];
  return {
    remove: function (item) {
      todos.splice(todos.indexOf(item), 1);
      console.log(`${item} removed!`);
    },
    add: function (item) {
      todos.push(item);
      console.log(`${item} added!`)
    },
    clear: function() {
      todos = [];
      console.log('all items deleted!');
    },
    list: function () {
      if (todos.length === 0) {
        console.log('The list is empty.')
      } else {
        todos.forEach( (todo) => console.log(todo) ) 
      }      
    },
  }
}

var list = makeList();
list.add('peas');
// peas added!
list.list();
// peas
list.add('corn');
// corn added!
list.list();
// peas
// corn
list.remove('peas');
// peas removed!
list.list();
// corn
console.log(list.items);
// undefined

/* 2. Update the implementation from problem 1 so that it retains the
      use of an object with methods but prevents outside access to the
      items the object stores internally.
*/