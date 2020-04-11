// bookingSlots1.js

function buildNewStudentForm(studentEmail, bookingSequence) {
  var mainElement = document.querySelector('main');
  var newStudentForm = document.createElement('form');
  var fieldset = document.createElement('fieldset');
  var h2 = document.createElement('h2');
  var emailDl = document.createElement('dl');
  var nameDl = document.createElement('dl');
  var sequenceDl = document.createElement('dl');
  var emailDt = document.createElement('dt');
  var nameDt = document.createElement('dt');
  var sequenceDt = document.createElement('dt');
  var emailDd = document.createElement('dd');
  var nameDd = document.createElement('dd');
  var sequenceDd = document.createElement('dd');
  var emailLabel = document.createElement('label');
  var nameLabel = document.createElement('label');
  var sequenceLabel = document.createElement('label');
  var emailInput = document.createElement('input');
  var nameInput = document.createElement('input');
  var sequenceInput = document.createElement('input');
  var button = document.createElement('button');

  newStudentForm.setAttribute('class', 'new-student-form');
  emailInput.setAttribute('name', 'email');
  emailInput.setAttribute('value', studentEmail);
  nameInput.setAttribute('name', 'name');
  sequenceInput.setAttribute('name', 'booking_sequence');
  sequenceInput.setAttribute('value', bookingSequence);
  button.setAttribute('type', 'submit');

  h2.textContent = 'Please provide new student details';
  emailLabel.textContent = 'Email:';
  nameLabel.textContent = 'Name:';
  sequenceLabel.textContent = 'Booking Sequence:';
  button.textContent = 'Submit';

  mainElement.appendChild(newStudentForm);
  newStudentForm.appendChild(fieldset);
  fieldset.appendChild(h2);
  emailDl.appendChild(emailDt);
  emailDt.appendChild(emailLabel);
  emailDl.appendChild(emailDd);
  emailDd.appendChild(emailInput);
  fieldset.appendChild(emailDl);
  nameDl.appendChild(nameDt);
  nameDt.appendChild(nameLabel);
  nameDl.appendChild(nameDd);
  nameDd.appendChild(nameInput);
  fieldset.appendChild(nameDl);
  sequenceDl.appendChild(sequenceDt);
  sequenceDt.appendChild(sequenceLabel);
  sequenceDl.appendChild(sequenceDd);
  sequenceDd.appendChild(sequenceInput);
  fieldset.appendChild(sequenceDl);
  fieldset.appendChild(button);
}

document.addEventListener('DOMContentLoaded', function() {
  var selectBox = document.querySelector('select');
  var form = document.querySelector('form');
  var schedules;
  var staff;
  var inputEmail;
  var inputSchedule;
  var scheduleId;

  // Retrieve staff
  (function() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/api/staff_members');
    xhr.responseType = 'json';

    xhr.addEventListener('load', function() {
      staff = xhr.response;
    });

    xhr.send();
  })();

  // Retrieve schedules
  (function() {
    var xhr = new XMLHttpRequest();

    xhr.open('GET', '/api/schedules');
    xhr.responseType = 'json'

    xhr.addEventListener('load', function() {
      schedules = xhr.response;
    });

    xhr.send();
  })();

  // Build select box
  selectBox.addEventListener('click', function(optionClick) {
    optionClick.preventDefault();

    if (selectBox.childElementCount === 0) {
      schedules.forEach( function(schedule) {
        var staffMember = staff.find( (staffMember) => {
          return staffMember.id === schedule.staff_id
        });
        var optionElement = document.createElement('option');
        optionElement.setAttribute('id', schedule.id);
        optionElement.textContent = `${staffMember.name} | ${schedule.date} | ${schedule.time}`;
        selectBox.appendChild(optionElement);
      });
    }
  });

  // Handle form submission
  form.addEventListener('submit', function(formSubmissionEvent) {
    formSubmissionEvent.preventDefault();

    var xhr = new XMLHttpRequest();
    var data = new FormData(form);
    inputEmail = data.get('student_email');
    inputSchedule = data.get('schedule');
    scheduleId = Array.from(selectBox.children)
                          .find( (optionEl) => {
                            return optionEl.textContent === inputSchedule
                          })
                          .getAttribute('id');
    var json = JSON.stringify({ student_email: inputEmail,
                                id: Number(scheduleId)});
    var bookingSequence;

    xhr.open('POST', form.action);
    xhr.setRequestHeader('Content-Type', 'application/json');

    xhr.addEventListener('load', function(postEvent) {
      debugger;           // try variables xhr, json, and data here
      var postRequest = postEvent.target;
      var newStudentForm;

      switch(postRequest.status) {
        case 204:
          alert('Booked');
          break;
        case 404:
          var bookingSequenceRegex = /[0-9]+/

          alert(postRequest.response);
          if (bookingSequenceRegex.test(postRequest.response)) {
            bookingSequence = Number(postRequest.response.match(bookingSequenceRegex)[0]);
            buildNewStudentForm(inputEmail, bookingSequence);
            newStudentForm = document.querySelector('.new-student-form');

            newStudentForm.addEventListener('submit', function(addStudentFormEvent) {
              addStudentFormEvent.preventDefault();

              var newStudentXhr = new XMLHttpRequest;
              var studentName;
              var newStudentJson;

              newStudentXhr.open('POST', '/api/students');
              newStudentXhr.setRequestHeader('Content-Type', 'application/json');
              studentName = new FormData(newStudentForm).get('name');
              newStudentJson = JSON.stringify({ email: inputEmail,
                                                name: studentName,
                                                booking_sequence: bookingSequence });

              newStudentXhr.addEventListener('load', function(addStudentEvent) {
                alert(addStudentEvent.target.response);
                switch(addStudentEvent.target.status) {
                  case 201:
                    (function() {
                      var bookingJson;
                      var retryBookingXhr = new XMLHttpRequest();
                      retryBookingXhr.open('POST', form.action);
                      retryBookingXhr.setRequestHeader('Content-Type', 'json');
                      bookingJson = JSON.stringify({ id: scheduleId, student_email: inputEmail });

                      retryBookingXhr.addEventListener('load', function(retryBookingEvent) {
                        switch(retryBookingEvent.target.status) {
                          case 204:
                            alert('Booked');
                            break;
                          case 404:
                            alert(retryBookingEvent.target.response);
                        }
                      });

                      retryBookingXhr.send(bookingJson);
                    })();
                }
              });

              newStudentXhr.send(newStudentJson);
            });
          }
          // debugger;
      }
    });

    xhr.send(json);
  });
});
