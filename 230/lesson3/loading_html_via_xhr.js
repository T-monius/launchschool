// loading_html_via_xhr.js


document.addEventListener('DOMContentLoaded', function() {
  var store = document.getElementById('store');
  
  var request = new XMLHttpRequest();
  request.open('GET', 'https://ls-230-web-store-demo.herokuapp.com/products');

  request.addEventListener('load', function(event) {
    store.innerHTML = request.response;
  });
  
  request.send();

  store.addEventListener('click', function(event) {
    var target = event.target;
    if (target.tagName !== 'A') {
      return;
    }

    event.preventDefault();

    var request = new XMLHttpRequest();
    request.open('GET', 'https://ls-230-web-store-demo.herokuapp.com' + target.getAttribute('href'));

    request.addEventListener('load', function(event) {
      debugger;
      store.innerHTML = request.response;
    });
    
    request.send();
  });
});
