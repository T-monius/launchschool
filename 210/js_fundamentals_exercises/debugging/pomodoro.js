// pomodoro.js

var userTasks = 10;
var userCheckmarks = 0;
var userSessions = 0;
var userMinutes = 0;

var pomodoro = function pomodoro(inputTasks, inputCheckmarks, inputSessions, inputMinutes) {
  var tasks = inputTasks;
  var checkmarks = inputCheckmarks;
  var sessions = inputSessions;
  var minutes = inputMinutes;
  console.log('Work.');

  while (minutes < 25) {
    minutes += 1;
    console.log('...' + String(minutes));
  }

  console.log('PLING!');

  sessions += 1;
  checkmarks += 1;

  if (checkmarks === tasks) {
    console.log('Done!');
    return;
  }

  var rest;
  if (sessions === 4) {
    sessions = 0;
    rest = 30;
  } else {
    rest = 5;
  }

  console.log('Rest for ' + rest + ' minutes.');

  minutes = 0;
  pomodoro(tasks, checkmarks, sessions, minutes);
};

pomodoro(userTasks, userCheckmarks, userSessions, userMinutes);

console.log([userTasks, userCheckmarks, userSessions, userMinutes])

// pomodoro(10, 0, 0, 0);