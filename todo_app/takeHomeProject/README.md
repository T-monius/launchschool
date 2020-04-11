## Assumptions
- Project Files
  + `todoApp.js` is required, and `README.md` is optional
  + I assume an additional file can be included to make the applicaiton available to a browser environment. I added `todoApp.html` in order to run the application in the browser. Since the practice project utilized browser based unit tests, I thought this was a safe assumption to make and that the practice tests could provide a model for my own test suite. 
- The requirements state, "Take note, also, that objects created should only contain the properties and methodd specified earlier." I assume that I can define new objects not described in the requirements in order to create the `todoList` and `todoManager` obects so long as the objects they create have only the properties described by the requirements.
  + I used the OLOO pattern which requires defining objects which return my desired objects
  + The `init` methods on the constructor objects are not considered additional methods
- Querying the `todoList`
  + Per the requirements, only one `todoList` method provides access to `todo` objects stored by `todoList`
    * I called this method `find`
    * The described method (`find`), "Returns a specified todo object based on its `id` property"
    * If `todoManager` is meant to 'interface with the `todoList` object' directly it would have to do so through `find`.
    * I would have more readily done something like the following:
    ```js
    var TodoSystem = {
      init: function(args) {
        var todos;
        // ... more code
        return [{
          // todoList
        },
        {
          // todoManager
        }];
      },
    }

    var [todoList, todoManager] = Object.create(TodoSystem).init(args)
    ```
    * ^ The above would allow both `todoList` and `todoManager` to access `todos` simultaneously. `todoList` would 'create, update, delete' `todos` and `todoManager` would 'read' from `todos`.
    * However, since the `todoManager` must query the `todoList` itself, I must utilize only `todoList` methods. Therefore, I provided access to `todos` through `todoList` using `find`. When an `id` is not specified upon invoking `find`, copies of all of the `todo` objects are returned. This may go tangent to the intent of the method to 'return a single `todo` object based on an `id` property'. I could not readily think of another way to provide access to private data from `todoList` to `todoManager` except by assuming `find` could do more than return a single item. Elsewise, I would have provided `todoManager` directly with access to the private data as outlined above. I felt that the option I chose was more consistent with the requirements than having `todoManager` not 'interface' with `todoList` at all by query the `todos` directly. I hope you understand the tradeoff I made based on my understanding of the requirements.
    * Alternativley, I could have provided a list of all `id` properties of each `todo` object to `todoManager` to then query through `find` one by one, yet I found this approach even more convoluted and less in line with the requirements than the two approaches described above.
- Deletion criteria
  + Deletetion is by `id` of the `todo` object to be deleted. There was nothing otherwise stating how to determine which `todo` object to delete.
- The original `todoSet` is unmodified.
  + I initialized the `todos` in `todoList` with new, duplicate todo objects.
