// bankingWithObjectsAndClosures.js

var account = {
  balance: 0,
  transactions: [],
  deposit: function(depositValue) {
    this.transactions.push({ type: 'deposit', amount: depositValue });
    return this.balance += depositValue;
  },
  withdraw: function(withdrawValue) {
    var withdrawal;
    if (this.balance - withdrawValue < 0) {
      withdrawal = this.balance;
      this.balance = 0;
    } else {
      this.balance -= withdrawValue;
      withdrawal = withdrawValue;
    }

    this.transactions.push({ type: 'withdrawal', amount: withdrawal });
    return withdrawal;
  },
}

console.log('--------------------');
console.log('Problem 2:')
console.log(account.balance);
account.deposit(42);
console.log(account.balance);
console.log('--------------------');
console.log('Problem 3:')
account.deposit(58);
console.log(account.balance);
account.withdraw(19);
console.log(account.balance);
console.log(`The amount withdrawn is: ${account.withdraw(91)}`);
console.log(`The new balance is: ${account.balance}`);
console.log('--------------------');
console.log('Problem 4:')
account.deposit(23);
console.log(account.transactions);
console.log(account.transactions[account.transactions.length - 1]);
console.log('--------------------');
console.log('Problem 5:')
/* 5. We want to create more than one account. Move the account
      creation code to a function named makeAccount that returns a
      new account object.
*/

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive
}

function makeAccount(num = getRandomInt(100, 1000)) {
  return {
    balance: 0,
    transactions: [],
    number: num,
    deposit: function(depositValue) {
      this.transactions.push({ type: 'deposit', amount: depositValue });
      return this.balance += depositValue;
    },
    withdraw: function(withdrawValue) {
      var withdrawal;
      if (this.balance - withdrawValue < 0) {
        withdrawal = this.balance;
        this.balance = 0;
      } else {
        this.balance -= withdrawValue;
        withdrawal = withdrawValue;
      }

      this.transactions.push({ type: 'withdrawal', amount: withdrawal });
      return withdrawal;
    },
  };
}

var accnt = makeAccount();
accnt.deposit(15);
console.log(accnt.balance);
var otherAccount = makeAccount();
console.log(otherAccount.balance);
console.log('--------------------');
console.log('Problem 6:')
/* 6. We also need an object to manage accounts: a bank. Create a
      function that returns an object that represents a bank. The
      bank should have a property named accounts that represents a
      list of accounts.
*/
function makeBank() {
  return {
    accounts: [],
    openAccount: function() {
      var newAccount = makeAccount(this.accounts.length + 101);
      this.accounts.push(newAccount)
      return newAccount;
    },
    transfer: function(src, dest, amt) {
      return dest.deposit(src.withdraw(amt));
    }
  }
}

var bank = makeBank();
console.log(bank.accounts);
console.log('--------------------');
console.log('Problem 7:');
var newAccount = bank.openAccount();
console.log(newAccount.number);
console.log(bank.accounts);
console.log(bank.accounts[0]);
var secondAccount = bank.openAccount();
console.log(bank.accounts);
console.log(secondAccount.number);
console.log('--------------------');
console.log('Problem 8:')
/* 8. Add a new method to the bank object that transfers money from
      one account to another.
*/
var bank = makeBank();
var source = bank.openAccount();
console.log(source.deposit(10));
var destination = bank.openAccount();
console.log(bank.transfer(source, destination, 7));
console.log('Balance in the source account:')
console.log(source.balance);
console.log('Balance in the destination account:')
console.log(destination.balance)
console.log('--------------------');
console.log('Problem 9:')
/* 9. Change the code so that users can access the account balance,
      account number, and transactions list by calling methods, but
      not by directly accessing those properties.
*/
function makePrivateAccount(num = getRandomInt(100, 1000)) {
  var balance = 0;
  var transactions = [];
  var number = num;
  return {
    number: function() {
      return number;
    },
    balance: function() {
      return balance;
    },
    deposit: function(depositValue) {
      transactions.push({ type: 'deposit', amount: depositValue });
      return balance += depositValue;
    },
    withdraw: function(withdrawValue) {
      var withdrawal;
      if (balance - withdrawValue < 0) {
        withdrawal = balance;
        balance = 0;
      } else {
        balance -= withdrawValue;
        withdrawal = withdrawValue;
      }

      transactions.push({ type: 'withdrawal', amount: withdrawal });
      return withdrawal;
    },
    transactions: function() {
      return transactions;
    },
  };
}

var bankFor9 = makePrivateBank();
var accountFor9 = bankFor9.openAccount();
console.log(accountFor9.balance());
console.log(accountFor9.deposit(17));
var accountFor9Two = bankFor9.openAccount();
console.log(accountFor9Two.number());
console.log(accountFor9.transactions());

console.log('--------------------');
console.log('Problem 10:')
function makePrivateBank() {
  var accounts = [];
  return {
    openAccount: function() {
      var newAccount = makePrivateAccount(accounts.length + 101);
      accounts.push(newAccount)
      return newAccount;
    },
    transfer: function(src, dest, amt) {
      return dest.deposit(src.withdraw(amt));
    }
  }
}

bank = makePrivateBank();
console.log(bank.accounts);
