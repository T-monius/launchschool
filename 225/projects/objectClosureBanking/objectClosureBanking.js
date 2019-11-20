// objectClosureBanking.js

var makeAccount = function makeAccount(newAccountNumber) {
  return {
    number: newAccountNumber,
    balance: 0,
    transactions: [],
    deposit: function (amount) {
      this.balance += amount;
      this.transactions.unshift({ type: 'deposit', amount: amount })
      return amount;
    },
    withdraw: function (amount) {
      var withdrawal;
      withdrawal = this.balance < amount ? this.balance : amount
      this.balance -= withdrawal;
      this.transactions.unshift({ type: 'withdraw', amount: withdrawal })
      return withdrawal;
    },
  };
};

var account = makeAccount();

console.log(account.balance);
// 0
console.log(account.deposit(42));
// 42
console.log(account.balance);
// 42
console.log(account.deposit(58));

console.log('-----------------------')

console.log(account.balance);
// 100
console.log(account.withdraw(19));
// 19
console.log(account.balance);
// 81
console.log(account.withdraw(91));
// 81
console.log(account.balance);
// 0

console.log('-----------------------')

console.log(account.deposit(23));
// 23
console.log(account.transactions);
//[{...}]
console.log(account.transactions[0]);
//{type: "deposit", amount: 23}

console.log('-----------------------')

// account.deposit(15);
// // 15
// account.balance;
// // 15
var otherAccount = makeAccount();
console.log(`Balance of other account: ${otherAccount.balance}`);
// 0

console.log('-----------------------')

var makeBank = function makeBank() {
  return {
    accounts: [],
    openAccount: function() {
      var number = this.accounts.length + 101;
      var account = makeAccount(number);
      this.accounts.push(account);
      return account;
    },
    transfer: function(source, destination, amount) {
      return destination.deposit(source.withdraw(amount));
    }
  };
};

// var bank = makeBank();
// console.log('Bank accounts list:');
// console.log(bank.accounts);
// // []

// console.log('-----------------------')

// var bank = makeBank();
// var account = bank.openAccount();
// console.log(account.number);
// // 101
// console.log(bank.accounts);
// // [{...}]
// console.log(bank.accounts[0]);
// // {number: 101, balance: 0, transactions: Array[0]}
// var secondAccount = bank.openAccount();
// console.log(secondAccount.number);
// // 102

console.log('-----------------------')

var bank = makeBank();
var source = bank.openAccount();
console.log(source.deposit(10));
// 10
var destination = bank.openAccount();
console.log(bank.transfer(source, destination, 7));
// 7
console.log(source.balance);
// 3
console.log(destination.balance);
// 7