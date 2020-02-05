## JS230 DOM and Asynchronous Programming with JavaScriptMaking HTTP Requests from JavaScriptExample: Sending JSON via XHR

### Problem 1
#### Task
- Write out the raw text of the HTTP request the last example above will send to the server.

### Understanding
- Basically the headers separated by their values

### Implementaion
```
POST /books HTTP/1.1
Host: ls-230-book-catalog.herokuapp.com
Content-Type: application/json
Accept: */*

{ title: 'Eloquent JavaScript', author: 'Marijn Haverbeke' }
```
### Problem 2
#### Task
- Write some JavaScript to create a new product by sending a request to the JSON API on our web store. To create a product, make a `POST` request to `https://ls-230-web-store-demo.herokuapp.com/v1/products`. To make the post request, you'll need the following:

  + `Content-Type` header set to `application/json`
  + `Authorization` header set to `token AUTH_TOKEN`
  + `json` object with with the following properties:
    * name
    * sku (must have 3 or more characters)
    * price (must be an integer greater than 0)

#### Understanding
- Make a new `POST` request
  + To 'web store'
  + Set proper headers
  + Serialized a JS object with name, sku, and price

#### Implementation
- Create a new request object
- Open a `POST` request to the web store URL
- JSON Stringify a JS object
- Send the JSON data

```js
var request = new XMLHttpRequest();
request.open('POST', 'https://ls-230-web-store-demo.herokuapp.com/v1/products');

request.setRequestHeader("Content-Type", 'application/json');
request.setRequestHeader('Authorization', 'token AUTH_TOKEN');

var data = { name: 'Poker Set', sku: 'pks100', price: 14.43 };
var json = JSON.stringify(data);

request.send(json);

var request1 = new XMLHttpRequest();
request1.open('GET', 'https://ls-230-web-store-demo.herokuapp.com/v1/products');

request1.send();
request1.response;
```

```js
// LS Solution
function createProduct(productData) {
  var json = JSON.stringify(productData);
  var request = new XMLHttpRequest();

  request.open('POST', 'https://ls-230-web-store-demo.herokuapp.com/v1/products');
  request.setRequestHeader('Content-Type', 'application/json');
  request.setRequestHeader('Authorization', 'token AUTH_TOKEN');

  request.addEventListener('load', function() {
    console.log('This product was added: ' + request.responseText);
  });

  request.send(json);
}

createProduct({
  name: 'HB pencil',
  sku: 'hbp100',
  price: 50,
});
```
