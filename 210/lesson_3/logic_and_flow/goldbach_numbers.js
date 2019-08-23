// goldbach_numbers.js

function isPrime(int) {
  if (int < 2) {
    return false;
  }
  for (var i = 2; i < int; i += 1) {
    if (int % i === 0) {
      return false;
    }
  }
  return true;
}

function primesUpToInt(n) {
  var primeArray = [];
  for (var i = 2; i < n; i += 1) {
    if (isPrime(i)) {
      primeArray.push(i);
    }
  }
  return primeArray;
}

function greatestAndSmallest(int, int1) {
  var greatest;
  var smallest;
  if (int >= int1) {
    greatest = int;
    smallest = int1;
  } else {
    greatest = int1;
    smallest = int;
  }
  return [smallest, greatest];
}

function checkGoldbach(n) {
  if (n % 2 === 1 || n < 4) {
     console.log(null);
     return
  }
  var primes = primesUpToInt(n);
  var pairs = [];
  var currentPrime;
  for (var i = 0; i <= primes.length - 1; i += 1) {
    currentPrime = primes[i];
    for (var j = 0; j <= primes.length - 1; j += 1) {
      var otherPrime = primes[j];
      if (currentPrime + otherPrime === n) {
        var orderedPair = greatestAndSmallest(currentPrime, otherPrime);
        var stringPair = `${orderedPair[0]} ${orderedPair[1]}`;
        if (!pairs.includes(stringPair)) {
          pairs.push(stringPair);
        }
      }
    }
  }
  pairs.forEach( pair => console.log(pair));
}

checkGoldbach(3);
// logs: null
console.log('');
checkGoldbach(4);
// logs: 2 2
console.log('');
checkGoldbach(12);
// logs: 5 7
console.log('');
checkGoldbach(100);
// logs:
// 3 97
// 11 89
// 17 83
// 29 71
// 41 59
// 47 53