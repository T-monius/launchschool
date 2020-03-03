// inventory.js

var inventory;

(function() {
  var itemCount = 0;
  inventory = {
    collection: [],
    setDate: function() {
      var date = new Date();
      $("#order_date").text(date.toUTCString());      
    },
    cacheTemplate: function() {
      var $i_tmpl = $("#inventory_item").remove();
      this.template = $i_tmpl.html();
    },
    newId: function() {
      return itemCount += 1;
    },
    addItem: function(item={name: '', stockNumber: '', quantity: 1}) {
      item.id = itemCount;
      this.collection.push(item);
    },
    init: function() {
      this.setDate();
      this.cacheTemplate();
    },
  };
})();

$(inventory.init.bind(inventory));

$(function() {
  $('#add_item').on('click', function() {
    $('#inventory').append(inventory.template.replace(/ID/g, String(inventory.newId())));
    inventory.addItem();
  });

  $('table').on('blur', 'input', function(blurEvent) {
    var $tableInput = $(blurEvent.target);
    var nameAttr = $tableInput.attr('name');
    var item = inventory.collection.find( (item) => {
      return item.id === Number(nameAttr.match(/\d+/));
    });
    var key;

    if (/.name./.test(nameAttr)) {
      key = 'name';
    } else if (/.stock_number./.test(nameAttr)) {
      key = 'stockNumber';
    } else if (/.quantity./.test(nameAttr)) {
      key = 'quantity';
    }

    if (item[key] !== $tableInput.val()) {
      item[key] = $tableInput.val();
    }
  });

  $('table').on('click', "a[class='delete']", function(clickEvent) {
    clickEvent.preventDefault();

    var $deleteAnchor = $(clickEvent.target);
    var id = Number($deleteAnchor.parent()
                                 .prev()
                                 .find('input')
                                 .attr('name')
                                 .match(/\d+/));
    var index = inventory.collection.findIndex( (item) => item.id === id);
    inventory.collection.splice(index, 1);
    $deleteAnchor.parents('table').remove();
  })
});

