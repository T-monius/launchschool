// thousandLights.js

var createNSwitches = function createNSwitches(n) {
  var switchBank = [];
  var i = 0;
  while (i < n) {
    switchBank.push(false);
    i += 1;
  }
  return switchBank;
};

var toggleNTimes = function toggleNTimes(n, switchBank) {
  var currentRepetition = 1;
  var switchNumber;
  while (currentRepetition <= n) {
    switchBank = switchBank.map( function(currentSwitch, idx) {
      switchNumber = idx + 1;
      return switchNumber % currentRepetition === 0 ? !currentSwitch : currentSwitch
    });
    currentRepetition += 1;
  }
  return switchBank;
};

var lightsOn = function lightsOn(switches) {
  var switchBank = createNSwitches(switches);
  switchBank = toggleNTimes(switches, switchBank);
  return switchBank.map( function(currentSwitch, idx) {
                      return currentSwitch === true ? idx + 1 : currentSwitch;
                    })
                    .filter( function(ele) {
                      return ele !== false;
                    });
}

console.log(lightsOn(5));        // [1, 4]
// Detailed result of each round for `5` lights
// Round 1: all lights are on
// Round 2: lights 2 and 4 are now off;     1, 3, and 5 are on
// Round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
// Round 4: lights 2 and 3 are now off;     1, 4, and 5 are on
// Round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

// console.log(lightsOn(100));      // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]