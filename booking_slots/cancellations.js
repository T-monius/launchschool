// cancellations.js

var cancelBooking = function cancelBooking(bookingId) {
  var xhr = new XMLHttpRequest();
  xhr.open('PUT', `/api/bookings/${bookingId}`);

  xhr.addEventListener('load', function(bookingCancelationEvent) {
    switch(bookingCancelationEvent.target.status) {
      case 204:
        alert('Booking cancelled');
        break;
      case 404:
        alert(bookingCancelationEvent.target.response);
    }
  })
};

cancelBooking(5);
