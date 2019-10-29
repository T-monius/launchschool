// vasyaClerk.js

// from CodeWars: Vasya-Clerk

const tickets = function tickets(peopleInLine){
  let cashOnHand = { "twenty-five": 0, fifty: 0, hundred: 0 };
  let i;
  let bill;

  for (i = 0; i < peopleInLine.length; i += 1) {
    bill = peopleInLine[i];
    if (bill === 25) {
      cashOnHand["twenty-five"] += 1;
    } else if (bill === 50) {
      cashOnHand["twenty-five"] -= 1;
      cashOnHand.fifty += 1;
    } else if (bill === 100) {
      if (cashOnHand.fifty) {
        cashOnHand.hundred += 1;
        cashOnHand.fifty -= 1;
        cashOnHand["twenty-five"] -= 2;
      } else {
        cashOnHand["twenty-five"] -= 3;
        cashOnHand.hundred += 1;
      }
    }
    if (cashOnHand.fifty < 0 || cashOnHand["twenty-five"] < 0) return 'NO'
  }
  return 'YES';
};

console.log(tickets([25, 25, 50]) === 'YES') // => YES 
console.log(tickets([25, 100]) === 'NO') // => NO. Vasya will not have enough money to give change to 100 dollars
console.log(tickets([25, 25, 50, 50, 100]) === 'NO') // => NO. Vasya will not have the right bills to 
                               //  give 75 dollars of change (you can't make two
                               //  bills of 25 from one of 50)
console.log(tickets([25, 50, 25, 25, 25, 100]) === 'YES') // YES
console.log(tickets([25,50,25,100,25,25,25,100,25,25,25,100,25,25,50,100,25,25,50,100]) == 'YES')  //  YES
console.log(tickets([25,25,25,100,25,25,25,100,25,25,50,100]) === 'YES');
console.log(tickets([25,25,50,100,25,25,25,100,25,25,25,100,25,25,25,100]) === 'YES');
console.log(tickets([25,25,25,100,25,25,50,100,25,25,25,100,25,50,25,100]) === 'YESS');
console.log(tickets([25,50,25,100,25,25,50,100,25,50,25,100]) === 'YES');