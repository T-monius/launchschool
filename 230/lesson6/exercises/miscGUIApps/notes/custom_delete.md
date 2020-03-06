## JS230 - Front-end Development with JavaScript > Miscellaneous GUI Apps > A Custom Delete Confirmation Prompt

### Task
- Create an application that displays a list of todos. When the user wants to delete a todo, the application should show a custom confirmation dialog.

- Specifications
  + Create a list of todos in the DOM from a JavaScript collection (array) of todos.
  + Add a delete button for each todo.
  + When the user clicks the delete button, a dialog appears asking the user to confirm the deletion.
    * Use CSS to display the dialog.
    * The dialog has Yes and No buttons.
    * When the user clicks the Yes button, the dialog disappears, and the corresponding todo is deleted.
    * When the user clicks the No button, the dialog disappears, and the todo is not deleted.
- You can use the id property for each todo object to identify the todo item to remove from the DOM. Most applications use a data-id HTML attribute to identify DOM items.

### Understanding
- Todo list
  + Based on js Array of objects
  + Delete
    * 'X'
    * Enlarges on hover
    * Opens dialogue on click
    * 'Yes' or 'No'

### Data Structures
- Array of todos
  + Object elements
    * `id` and `title` properties
    * Number
    * String

### Algorithm
- Create Markup
  + Main
    * Article
    * List, todo templates
  + Aside
    * Overlay
    * Hidden
    * Opaque background
    * Top most Z-index and show when delete queued
- Ready
  + Fill the list
  + Set listeners
    * 'X'
    * Links
- OLOOs?
