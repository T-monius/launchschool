
var _ = function(element) {
  var u = {
    last: function() {
      return element[element.length - 1];
    },
    first: function() {
      return element[0];
    },
    without: function(excludedElement) {
      var newArray = element.filter( (innerElement) => {
        var args = Array.prototype.slice.call(arguments);
        return args.every( (arg) => innerElement !== arg );
      });
      return newArray;
    },
    lastIndexOf: function(searchElement) {
      var len = element.length;
      var i;
      for (i = len - 1; i >= 0; i -= 1) {
        if (element[i] === searchElement) {
          return i;
        }
      }
      return -1;
    },
    sample: function(arg) {
      var arr = element;
      function getRandomInt(min, max) {
        min = Math.ceil(min);
        max = Math.floor(max);
        return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive
      }

      var sampleVal;
      var randomNum = getRandomInt(0, arr.length);

      if (arg) {
        var i
        var samples = [];
        for(i = 0; i < arg; i += 1) {
          while (samples.includes(randomNum)) {
            randomNum = getRandomInt(0, arr.length);
          }
          samples.push(arr[randomNum]);
        }

        sampleVal = samples;
      } else {
        sampleVal = arr[randomNum];
      }

      return sampleVal;
    },
    findWhere: function(comparisonObject) {
      var i;
      var obj;
      var allproperties = Object.getOwnPropertyNames(comparisonObject);;
      var isMatch;

      for(i = 0; i < element.length; i += 1) {
        obj = element[i];
        isMatch = allproperties.every( function(prop) {
          return obj[prop] === comparisonObject[prop];
        });
        if (isMatch) {
          return obj;
        }
      }

      return undefined;
    },
    where: function(comparisonObject) {
      var i;
      var obj;
      var allproperties = Object.getOwnPropertyNames(comparisonObject);;
      var isMatch;
      var matches = [];

      for(i = 0; i < element.length; i += 1) {
        obj = element[i];
        isMatch = allproperties.every( function(prop) {
          return obj[prop] === comparisonObject[prop];
        });
        if (isMatch) {
          matches.push(obj);
        }
      }

      return matches;
    },
    pluck: function(prop) {
      var arrayOfObjects = element;

      return arrayOfObjects.map((obj) => obj[prop]);
    },
    keys: function() {
      return Object.getOwnPropertyNames(element);
    },
    values: function() {
      return Object.getOwnPropertyNames(element).map((key) => element[key]);
    },
    pick: function() {
      var oldObject = element;
      var args = Array.prototype.slice.call(arguments);
      var newObject = {};

      args.forEach( (prop) => newObject[prop] = oldObject[prop]);

      return newObject;
    },
    omit: function() {
      var oldObject = element;
      var keys = Object.getOwnPropertyNames(oldObject);
      var args = Array.prototype.slice.call(arguments);
      var newObject = {};

      keys.forEach( function(prop) {
        if (!(args.includes(prop))) {
          newObject[prop] = oldObject[prop];
        }
      });

      return newObject;
    },
    has: function(prop) {
      // var keys = Object.getOwnPropertyNames(element);

      if (element[prop]) {
        return true;
      }

      return false;
    },
  };

  (['isElement', 'isArray', 'isObject', 'isFunction', 'isBoolean',
    'isString', 'isNumber']).forEach(function(method) {
    u[method] = function() { _[method].call(u, element) };
  })

  return u;
};

_.range = function() {
  var args = Array.prototype.slice.call(arguments);
  var newArray = [];
  var i;
  if (args.length === 1) {
    for(i = 0; i < args[0]; i += 1) {
      newArray.push(i);
    }
  } else if (args.length === 2) {
    for(i = args[0]; i < args[1]; i += 1) {
      newArray.push(i);
    }
  }

  return newArray;
};

_.extend = function() {
  var destinationObject = arguments[0];
  var sourceObjects = Array.prototype.slice.call(arguments, 1);

  sourceObjects.forEach( function(obj) {
    var keys = Object.getOwnPropertyNames(obj);

    keys.forEach( function(key) {
      destinationObject[key] = obj[key];
    })
  })

  return destinationObject;
}

_.isElement = function(obj) {
  return obj && obj.nodeType === 1;
}

_.isArray = function(arr) {
  return arr && Array.isArray(arr);
}

_.isObject = function(obj) {
  return obj && typeof obj === 'object' || typeof obj === 'function';
}

_.isFunction = function(func) {
  return func && typeof func === 'function';
}

_.isBoolean = function(bool) {
  return toString.call(bool) === "[object Boolean]";
}

_.isString = function(str) {
  return toString.call(str) === "[object String]";
}

_.isNumber = function(num) {
  return toString.call(num) === "[object Number]";
}
