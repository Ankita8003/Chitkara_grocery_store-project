<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Countdown</title>
</head>
<body>
    <div>
        <span id="days"></span> days 
        <span id="hours"></span> hours 
        <span id="mins"></span> minutes 
        <span id="seconds"></span> seconds
    </div>

    <script>
        const daysEl = document.getElementById("days");
        const hoursEl = document.getElementById("hours");
        const minsEl = document.getElementById("mins");
        const secondsEl = document.getElementById("seconds");

        const newYears = "31 Jan 2022";

        function countdown() {
            const newYearsDate = new Date(newYears);
            const currentDate = new Date();

            const totalSeconds = (newYearsDate - currentDate) / 1000;

            const days = Math.floor(totalSeconds / 3600 / 24);
            const hours = Math.floor(totalSeconds / 3600) % 24;
            const mins = Math.floor(totalSeconds / 60) % 60;
            const seconds = Math.floor(totalSeconds) % 60;

            daysEl.innerHTML = days;
            hoursEl.innerHTML = formatTime(hours);
            minsEl.innerHTML = formatTime(mins);
            secondsEl.innerHTML = formatTime(seconds);
        }

        function formatTime(time) {
            return time < 10 ? `0${time}` : time;
        }

        // initial call
        countdown();

        setInterval(countdown, 1000);
    </script>
</body>
</html>
