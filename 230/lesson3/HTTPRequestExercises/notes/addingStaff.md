## JS230 - Front-end Development with JavaScript > Making HTTP Requests > Adding Staff

### Task
- Implement a form for adding new staff, and then use the booking app API to add the staff to the database. Your implementation should handle the different possible responses of the server and inform the user of the outcome.

### Understanding
- Form
  + Inputs
    * Staff email
    * Staff id
    * Both are required
  + Output
    * Alert the creation of staff member
    * Or, alert the reason for failure (i.e. wrong inputs)

### Algorithm
- I can select a form
  + Set a listener for `'submit'`
    * Create a `POST` request
    * Use `formData` to capture inputs
    * Verify the data
    * Conditionally send request if the inputs are valid 

### Code
```js
// reset the api to its original status
'/api/reset';
```
