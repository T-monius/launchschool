## JS230 - Front-end Development with JavaScript Miscellaneous GUI AppsAdding Smart Select to Car Shop

### Task
- When we select a car make from the filtering options, the model selection options remain the same. Ideally, selecting a specific make should limit the possible model choices to cars made by that manufacturer.
  + Required change
    * Make the changes needed in the car filtering application so that selecting a 'make' restricts the 'model' choices to the manufacturer's models.

### Understanding
- Modify the form as it's being filled
  + Reduce options to those 'models' that match the 'make'

### Data Structures
- Object
  + Array values

### Implementation
- Set A listener for an `'input'` event on the 'make' select box
  + Retrieve the value of the select box
  + Filter the 'models' accordingly
    * Update the form
