// customDelete.js

let TodoList = (function() {
  let todos = [
    { id: 1, title: 'Homework' },
    { id: 2, title: 'Shopping' },
    { id: 3, title: 'Calling Mom' },
    { id: 4, title: 'Coffee with John '}
  ];

  return {
    init: function() {
      this.hideOverlay();
      this.configureTemplates();
      this.populateTodoBox();
      this.setLinkHandlers();

      return this;
    },
    configureTemplates: function() {
      this.todoListTemplate = Handlebars.compile($('#todo_list').html());
      this.todoTemplate = Handlebars.compile($('#todo').html());
      Handlebars.registerPartial('todo', $('#todo').html());
    },
    populateTodoBox: function() {
      $('.todo_box').append(this.todoListTemplate({ todos: todos }));
      this.setContextMenuHanlders();
    },
    hideOverlay: function() {
      $('.overlay').hide();;
    },
    setLinkHandlers: function() {
      let $deleteX = $('.delete_x');
      let $deleteYes = $('.delete_yes');
      let $deleteNo = $('.delete_no');
      let $overlay = $('.overlay');
      let self = this;
      let $clickedTodo;

      $('a').on('click', function(clickEvent) {
        clickEvent.preventDefault();
      });

      $deleteX.on('click', function(deleteEvent) {
        $clickedTodo = $(deleteEvent.target).closest('li');
        $overlay.show();
      });

      $deleteNo.on('click', function(noEvent) {
        $clickedTodo = null;
        $overlay.hide();
      });

      $deleteYes.on('click', function(yesEvent) {
        let todoId = Number($clickedTodo.data('id'));
        self.deleteTodo();
        $clickedTodo.remove();
        $overlay.hide();
      });
    },
    deleteTodo: function(todoId) {
      let idxOfTodo = todos.find( (todo) => todo.id === todoId);
      todos.splice(idxOfTodo, 1);
    },
    setContextMenuHanlders: function() {
      let $contextMenu = $('.context_menu');

      $('.todo_box li').on('contextmenu', function(menuEvent) {
        menuEvent.preventDefault();

        $('body').append($contextMenu.css({ left: menuEvent.clientX, 
                                          top: menuEvent.clientY }));
        $contextMenu.show();
      });

      $contextMenu.on('click', '.menu_delete', function() {
        $('.overlay').show();
      });

      $(document).on('click', function() {
        $contextMenu.hide();
      });
    },
  };
})();

$(TodoList.init.bind(TodoList))
