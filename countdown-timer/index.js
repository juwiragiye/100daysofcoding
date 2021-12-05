let birthDate = '2022-01-15 00:00';

const daysCount = document.getElementById('days');
const hoursCount = document.getElementById('hours');
const minutesCount = document.getElementById('minutes');
const secondsCount = document.getElementById('seconds');

function countdown() {
  birthDate = new Date(birthDate);
  const currentDate = new Date();
  const timeLeftInSecs = new Date(birthDate - currentDate);
  const seconds = timeLeftInSecs.getUTCSeconds();
  const minutes = timeLeftInSecs.getMinutes();
  const hours = Math.trunc((timeLeftInSecs / 1000 / 3600) % 24);
  const days = Math.trunc(timeLeftInSecs / 1000 / 3600 / 24);
  secondsCount.innerText = seconds;
  minutesCount.innerText = minutes;
  hoursCount.innerText = hours;
  daysCount.innerText = days;
}

setInterval(countdown, 1000);
