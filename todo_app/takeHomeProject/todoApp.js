// todoApp.js

var $ol = document.querySelector("ol");

function outputResult(message) {
  var $li = document.createElement("li");
  $li.innerText = message;
  $ol.appendChild($li);
  return $li;
}

function test(message, assertion) {
  var $msg = outputResult(message),
      passed = false;

  try {
    passed = assertion();
  }
  catch (e) {
    passed = false;
  }
  $msg.setAttribute("class", passed ? "pass" : "fail");
}

var todoData = {
  title: 'Buy Milk',
  month: '1',
  year: '2017',
  description: 'Milk for baby',
};

var todoData1 = {
  title: 'Buy Milk',
  month: '1',
  year: '2017',
  description: 'Milk for baby',
};

var todoData2 = {
  title: 'Buy Apples',
  month: '',
  year: '2017',
  description: 'An apple a day keeps the doctor away',
};

var todoData3 = {
  title: 'Buy chocolate',
  month: '1',
  year: '',
  description: 'For the cheat day',
};

var todoData4 = {
  title: 'Buy Veggies',
  month: '',
  year: '',
  description: 'For the daily fiber needs',
};

var todoSet = [todoData1, todoData2, todoData3, todoData4];

var todoData5 = {
  title: 'Buy toothpaste',
  month: '1',
  year: '2017',
  description: 'For brushing teeth well',
}
var todoData6 = {
  title: 'Eat candy',
  month: '1',
  year: '2017',
  description: 'Rot those teeth',
}
var todoData7 = {
  title: 'Brush teeth',
  month: '1',
  year: '2017',
  description: 'Try and get teeth in good condition',
}
var invalidTodo = {
  title: "I'm a bad boy baby",
  month: '8',
  year: '2000',
  description: "I shouldn't be added",
  estimatedTimeInHours: 9,
}

var TodoList = {
  init: function(todoSet) {
    function initializeTodos(todoSet) {
      return todoSet.map( function(todo) {
        var duplicateTodo;
        if (isValidTodo(todo)) {
          duplicateTodo = dup(todo);
          duplicateTodo.id = nextId();
          duplicateTodo.completed = false;
          duplicateTodo.isWithinMonthYear = isWithinMonthYear;
          return duplicateTodo;          
        }
      });
    }

    var nextId = function generateId() {
      var id = 100;
      return function() {
        return id += 1;
      };
    }();

    function dup(todo) {
      var keys = Object.getOwnPropertyNames(todo);
      var copy = Object.create(Object.getPrototypeOf(todo));
      keys.forEach( function(key) {
        copy[key] = todo[key];
      })

      return copy;
    }

    function isValidTodo(todo) {
      var keys = Object.getOwnPropertyNames(todo);
      return keys.length === 4 && keys.every( function(key) {
        return typeof todo[key] === 'string' 
               && (key === 'title' || key === 'month'
                   || key === 'year' || key === 'description');
      });
    }

    function isWithinMonthYear(month, year) {
      return this.month === month && this.year === year;
    }

    var todos = initializeTodos(todoSet);
    return  {
      add: function(todo) {
        if (isValidTodo(todo)) {
          duplicateTodo = dup(todo);
          duplicateTodo.id = nextId();
          duplicateTodo.completed = false;
          duplicateTodo.isWithinMonthYear = isWithinMonthYear;
          todos.push(duplicateTodo);  
        }
        return this;
      },
      delete: function(todoId) {
        var idx = todos.findIndex( function(todo) {
          return todo.id === todoId;
        })

        if (idx >= 0) {
          todos.splice(idx, 1);
        }
        return this;
      },
      update: function(todoId, property, newValue) {
        var todo = todos.find( function(todo) {
          return todo.id === todoId;
        })
        todo[property] = newValue;
        return this;
      },
      find: function(todoId) {
        var todo;
        if (todoId) {
          todo = todos.find( function(todo) {
            return todo.id === todoId;
          });
          if (todo) {
            return dup(todo);
          } else {
            return todo;  // undefined
          }
        } else {
          return todos.map(dup);
        }
      },
    };
  },
}

var TodoManager = {
  init: function(todoList) {
    var listObject = todoList;
    return  {
      returnAll: function() {
        return listObject.find();
      },
      returnAllCompleted: function() {
        return listObject.find().filter( function(todo) {
          return todo.completed === true;
        })
      },
      todosForMonthYear: function(month, year) {
        return listObject.find().filter( function(todo) {
          return todo.isWithinMonthYear(month, year);
        })
      },
      completedTodosForMonthYear: function(month, year) {
        return this.todosForMonthYear(month, year).filter( function(todo) {
          return todo.completed === true;
        })
      },
    };
  },
}

var todoList = Object.create(TodoList).init(todoSet);
var todoManager = Object.create(TodoManager).init(todoList);
test("Trying to access the todos in todoList throws an error (Should be Red)", function() {
  return todoList.todos;
});
test("Function retunAll defined on todoManager", function() {
  return typeof todoManager.returnAll === "function";
});
test("The 'todoList' is initialized with 4 elements", function() {
  return todoManager.returnAll().length === 4;
});
test("Items returned by returnAll are different than those input to initialize the todoList", function() {
  return todoManager.returnAll()[0] !== todoSet[0];
});
test("Modifying a todo object returned by query does not modify the todos on todoList. Copy returned.", function() {
  var queriedTodos = todoManager.returnAll();
  var firstTodoFirstQuery = queriedTodos[0];
  firstTodoFirstQuery.title = 'Modified';
  // Query again to see if the mutation took place on the storred todo
  var firstTodoSecondQuery = todoManager.returnAll()[0];
  return firstTodoFirstQuery.title !== firstTodoSecondQuery.title;
});
test("Function find defined on todoList", function() {
  return typeof todoList.find === "function";
});
test("Can search for an item by its id with find", function() {
  var searchId = 101;
  var foundTodo = todoList.find(searchId);
  return typeof foundTodo === 'object' && foundTodo.id === searchId;
});
test("Searching for a todo by a non-existent id returns undefined", function() {
  var searchId = 110;
  var returnValue = todoList.find(searchId);
  return returnValue === undefined;
});
test("Function add defined on todoList", function() {
  return typeof todoList.add === "function";
});
test("Can add to the todoList with function add", function() {
  todoList.add(todoData5);
  return todoManager.returnAll().length === 5
         && todoManager.returnAll()[4]['title'] === 'Buy toothpaste';
});
test("Invalid todo will not be added", function() {
  var initialTodoListLength = todoManager.returnAll().length === 5;
  var endingTodoListLength;
  todoList.add(invalidTodo);
  endingTodoListLength = todoManager.returnAll().length === 5;
  return initialTodoListLength === endingTodoListLength;
});
test("Function delete defined on todoList", function() {
  return typeof todoList.delete === "function";
});
test("Can delete item from todoList by id", function() {
  var initiallyFound = todoList.find(105) !== undefined;
  todoList.delete(105);
  var isUndefinedAfterwards = todoList.find(105);
  return initiallyFound === true && isUndefinedAfterwards === undefined;
});
test("Function update defined on todoList", function() {
  return typeof todoList.update === "function";
});
test("Succesfully search an item by id and update value of a property", function() {
  var previousTitle = todoList.find(101)['title'];
  var newTitle;
  todoList.update(101, 'title', 'Buy formula');
  todoList.update(102, 'description', 'Babies take different milk');
  newTitle = todoList.find(101)['title'];
  return previousTitle === 'Buy Milk' && newTitle === 'Buy formula';
});
todoList.add(todoData6);
todoList.add(todoData7);
test("Function returnAllCompleted defined on todoManager", function() {
  return typeof todoManager.returnAllCompleted === "function";
});
test("Completing 3 todos and querying with returnAllCompleted returns 3", function() {
  todoList.update(102, 'completed', true);
  todoList.update(106, 'completed', true);
  todoList.update(107, 'completed', true);
  return todoManager.returnAllCompleted().length === 3;
});
test("Function todosForMonthYear defined on todoManager", function() {
  return typeof todoManager.todosForMonthYear === "function";
});
test("Querying for todos by particular year and month returns appropriate number of todos", function() {
  return todoManager.todosForMonthYear('1', '2017').length === 3;
});
test("Function completedTodosForMonthYear defined on todoManager", function() {
  return typeof todoManager.completedTodosForMonthYear === "function";
});
test("Querying completed todos by year and month returns appropriate number of todos", function() {
  return todoManager.completedTodosForMonthYear('1', '2017').length === 2;
});
