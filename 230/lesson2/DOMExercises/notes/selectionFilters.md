## JS230 - Front-end Development with JavaScript Events and Asynchronous ProgrammingSelection Filters

### Task
- Given the HTML below, write some JavaScript code that updates the options on one dropdown when the selection in the other dropdown changes. For instance, when the user chooses an option under Classifications, the items in the Animals dropdown should change accordingly. Use the lookup tables below to see which animals and classifications go together.

### Understanding
- Selection box is part of a form
  + `select` element
    * Nested `option`s tags
- Two Select elements
  + Each with nested options
- Add and remove options
  + Easier if we were to just remove elements
  + Adding requires storing removed tags or having a list of total options for each selection
- `input` and `change` events associated with a `select` box

### Examples / Test Cases
- Video
  + Changes to first selection box affect the second
  + Changes to the second selection box affect the first

### Data Structutes
- Object
- Array

### Algorithm
- Functional abstractions
  + Iteration
  + Filtration
  + Iteration

#### First Algorithm
- Create an object for the first selection (classifications)
  + keys
    * All possible selections
  + Values
    * an array of values for that selection
- Create an object for the second selection (animals)
  + Keys
    * All possible animal selections
  + Values
    * Possible classifications for that animal
- Define method to create an option node
  + Use `createElement` to create the node
  + `node.setAttribute` to add a `value` tag with the value based on input
  + Use `textContent` to add content based on the input
  + Return the node created
- Define a method to tear-down a select box
  + Get the box
  + Iterate its children
    * Revmove each child
- Define a method to create a select box
  + 2 parameters
    1. Dictionary for particular select box
    2. Key for list
  + Get the select box
  + Teardown current box
  + Iterate the given key of the dictionary for that box
    * Create a node for value
    * Append to select boxes children

#### Refactored Algorithm
- Create an object for the first selection (classifications)
  + keys
    * All possible selections
  + Values
    * an array of values for that selection
- Create an object for the second selection (animals)
  + Keys
    * All possible animal selections
  + Values
    * Possible classifications for that animal
- Define a method to tear-down a select box
  + Get the box
  + Iterate its children
    * Remove each child
- Set an empty array variable to store nodes for children of each select box
- Clone the children of each select box
- Set a listener for the form
  + Determine the particular select box of an event
    * `target`
      - Parent's id
    * Update the given select box to contain only the node of the `eventTarget`
      - Get the select box by its `id`
      - Filter the children against a value corresponding to the `eventTarget`
    * Clear the other box
    * Select the nodes that correspond to the list of options for the `eventTarget` node
      - Use `value` of `target` node
      - Access dictionary for the `otherSelectBox`
      - Map nodes from the cloned children to the lists of values that correspond the the key
    * Append the appropriate nodes to the children of the other select box
