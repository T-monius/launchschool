## JS230 DOM and Asynchronous Programming with JavaScript > Making HTTP Requests from JavaScript > Example: Loading JSON via XHR

### Problem 1
#### Task
- Write some JavaScript code that loads JSON data from `https://api.github.com/repos/rails/rails`, parses the JSON into a JavaScript object, and then logs the HTTP status code and the number of open issues to the console.

#### Understanding
1. Load JSON data
  + Get data from `...api.github.com...`
    * GET request
2. Parse the JSON
  + Response
3. Log
  + HTTP status code
  + Number of issues

### Algorithm
- Load JSON Data
  + Create a new `XMLHttpRequest`
    * GET
    * Set `responseType`
  + Add a listener for loading
    * Inside of the listener
    * Query the response for `status` and 'errors'

### Code
```js
var request = new XMLHttpRequest();
request.open('GET', 'https://api.github.com/repos/rails/rails');
request.responseType = 'json';

request.addEventListener('load', function() {
  console.log(request.status);
  console.log(request.response.open_issues);
});

request.send();
```
```js
// LS solution
var request = new XMLHttpRequest();
request.open('GET', 'https://api.github.com/repos/rails/rails');

request.addEventListener('load', function(event) {
  var data = JSON.parse(request.response);
  console.log(request.status);
  console.log(data.open_issues);
});

request.send();
```

### Problem 2
#### Task
- Extend the code from the previous exercise to log the message `'The request could not be completed!'` to the console when the request produces an error. You may replace the url in the previous exercise to `"hts://api.github.com/repos/rails/rails"` so that the error handler will be triggered.

### Understanding
- Can create a listener for an `'error'`
```js
var request = new XMLHttpRequest();
request.open('GET', 'hts://api.github.com/repos/rails/rails');
request.responseType = 'json';

request.addEventListener('error', function() {
  console.log('The request could not be completed');
});

request.addEventListener('load', function() {
  console.log(request.status);
  console.log(request.response.open_issues);
});

request.send();
```
