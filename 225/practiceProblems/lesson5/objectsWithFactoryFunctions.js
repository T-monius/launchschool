// objectsWithFactoryFunctions.js

/* 1. What are the two disadvantages of working with factory
      functions?
      - All objects will have access to all the methods, full copies
      - There is no way to know if an object was created from a
        factory funcion (i.e. is a specific "type")
*/

/* 2. Rewrite the code below to use object-literal syntax to generate
      the returned object:

    function makeObj() {
      var obj = {};
      obj.propA = 10;
      obj.propB = 20;
      return obj;
    }
*/

function makeObj() {
  return {
    propA: 10,
    propB: 20,
  };
}

/* 3. 
*/

function createInvoice(services) {
  var services = services || {};
  var payments = [];
  var invoice = {};
  invoice.phone = services.phone || 3000;
  invoice.internet = services.internet || 5500;
  invoice.total = function() {
    return this.phone + this.internet;
  };
  invoice.addPayment = function(newPayment) {
    debugger;
    payments.push(newPayment);
  };
  invoice.addPayments = function(newPayments) {
    newPayments.forEach( function(newPayment) {
      payments.push(newPayment);
    }, this);
  };
  invoice.amountDue = function() {
    return this.total() - invoiceTotal(payments);
  };

  // invoice.amountDue = function() {
  //   return this.total() - payments.reduce( function(acc, currentPayment) {
  //     return acc + currentPayment.total();
  //   }, 0);
  // };

  return invoice;
}

function invoiceTotal(invoices) {
  var total = 0;
  var i;

  for (i = 0; i < invoices.length; i += 1) {
    total += invoices[i].total();
  }

  return total;
}

var invoices = [];
invoices.push(createInvoice());
invoices.push(createInvoice({
  internet: 6500,
}));

invoices.push(createInvoice({
  phone: 2000,
}));

invoices.push(createInvoice({
  phone: 1000,
  internet: 4500,
}));

console.log(invoiceTotal(invoices));             // => 31000

console.log('----------------------');

function createPayment(services) {
  var services = services || {};
  var payment = {
    phone: services.phone || 0,
    internet: services.internet || 0,
    amount: services.amount,
  };

  payment.total = function() {
    return this.amount || (this.phone + this.internet);
  };

  return payment;
}

function paymentTotal(payments) {
  var total = 0;
  var i;

  for (i = 0; i < payments.length; i += 1) {
    total += payments[i].total();
  }

  return total;
}

var payments = [];
payments.push(createPayment());
payments.push(createPayment({
  internet: 6500,
}));

console.log(payments[0]);
console.log('Total of first invoice added:')
console.log(payments[0].total());
console.log(payments[1]);
console.log('Total of second invoice added:')
console.log(payments[1].total());

payments.push(createPayment({
  phone: 2000,
}));

console.log(payments[2]);

payments.push(createPayment({
  phone: 1000,
  internet: 4500,
}));

console.log(payments[3]);

payments.push(createPayment({
  amount: 10000,
}));

console.log(payments[4]);

console.log(paymentTotal(payments));      // => 24000

console.log('----------------------');

var invoice = createInvoice({
  phone: 1200,
  internet: 4000,
});

console.log(invoice);

var payment1 = createPayment({
  amount: 2000,
});

console.log('This is the first payment added to the invoice:')
console.log(payment1);

var payment2 = createPayment({
  phone: 1000,
  internet: 1200,
});

console.log('This is the second payment added to the invoice:')
console.log(payment2);

var payment3 = createPayment({
  phone: 1000,
});

console.log('This is the third payment added to the invoice:')
console.log(payment3);

invoice.addPayment(payment1);
invoice.addPayments([payment2, payment3]);
console.log('This is the total of an invoice')
console.log(invoice.amountDue());       // this should return 0
console.log('----------------------');
