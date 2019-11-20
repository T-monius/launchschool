// objectClosureBanking9.js

var makeAccount = function makeAccount(newAccountNumber) {
  var balance = 0;
  var number = newAccountNumber;
  var transactions = [];

  return {
    balance: function () {
      return balance;
    },
    number: function () {
      return number;
    },
    transactions: function () {
      return transactions;
    },
    deposit: function (amount) {
      balance += amount;
      transactions.unshift({ type: 'deposit', amount: amount })
      return amount;
    },
    withdraw: function (amount) {
      var withdrawal;
      withdrawal = balance < amount ? balance : amount
      balance -= withdrawal;
      transactions.unshift({ type: 'withdraw', amount: withdrawal })
      return withdrawal;
    },
  };
};



var makeBank = function makeBank() {
  var accounts = [];

  return {
    openAccount: function() {
      var number = accounts.length + 101;
      var account = makeAccount(number);
      accounts.push(account);
      return account;
    },
    transfer: function(source, destination, amount) {
      return destination.deposit(source.withdraw(amount));
    }
  };
};

var bank = makeBank();
var account = bank.openAccount();
console.log(account.balance());
// 0
console.log(account.deposit(17));
// 17
var secondAccount = bank.openAccount();
console.log(secondAccount.number());
// 102
console.log(account.transactions());
// [Object]

console.log('-------------------------')

var bank = makeBank();
console.log(bank.accounts);
// undefined
