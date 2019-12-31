// traversingAndAccessing.js

function walk(node, callback) {
  callback(node);

  var i;
  for (i = 0; i < node.childNodes.length; i++) {
    walk(node.childNodes[i], callback);
  }
}

var html = document.childNodes[1]; // skip doctype
var body = html.lastChild;         // skip head and text nodes
var heading = body.childNodes[1];  // skip text node
heading.style.color = 'red';
heading.style.fontSize = '48px';
