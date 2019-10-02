// page18.js

var bookPages = 364;
var initialEnergy = 100;
var firstPage = 1;

function read(totalPages, energy, currentPage) {
  while (energy > 0 && currentPage < totalPages) {
    currentPage += 1;
    energy -= (5 + currentPage * 0.1);
  }

  console.log('Made it to page ' + String(currentPage) + '.');

  // Drink a cup of coffee.
  energy = 100;

  // Continue reading.
  if (currentPage < totalPages) {
    read(totalPages, energy, currentPage);
  } else {
    console.log('Done!');
  }
}

read(bookPages, initialEnergy, firstPage);