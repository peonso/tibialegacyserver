// set the date we're counting down to
// http://www.epochconverter.com/
// Unix * 1000 any far future date with the same hour as server save, UTC timezone.

// var target_date
// being fetched from file layout/config.php

// variables for time units
var days, hours, minutes, seconds;
 
// get tag element
var sshours = document.getElementById("sshours");
var ssminutes = document.getElementById("ssminutes");
var ssseconds = document.getElementById("ssseconds");
 
// update the tag with id "countdown" every 1 second
setInterval(function () {

    // find the amount of "seconds" between now and target
    var current_date = new Date().getTime();
    var seconds_left = (target_date - current_date) / 1000;
 
    // do some time calculations
    days = parseInt(seconds_left / 86400);
    seconds_left = seconds_left % 86400;

    hours = parseInt(seconds_left / 3600);
    seconds_left = seconds_left % 3600;
     
    minutes = parseInt(seconds_left / 60);
    seconds = parseInt(seconds_left % 60);
     
    // format countdown string + set tag value
	if (hours < 10) {
		sshours.innerHTML = "0" + hours;
	} else {
		sshours.innerHTML = hours;
	}
	if (minutes < 10) {
		ssminutes.innerHTML = "0" + minutes; 
	} else {
		ssminutes.innerHTML = minutes; 
	}
	if (seconds < 10) {
		ssseconds .innerHTML = "0" + seconds; 
	} else {
		ssseconds .innerHTML = seconds; 
	}
 
}, 1000);