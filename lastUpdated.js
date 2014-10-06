

var days = new Array(7);
days[0] = "Sunday";
days[1] = "Monday";
days[2] = "Tuesday";
days[3] = "Wednesday";
days[4] = "Thursday";
days[5] = "Friday";
days[6] = "Saturday";
var months = new Array(12);
months[0] = "January";
months[1] = "February";
months[2] = "March";
months[3] = "April";
months[4] = "May";
months[5] = "June";
months[6] = "July";
months[7] = "August";
months[8] = "September";
months[9] = "October";
months[10] = "November";
months[11] = "December";
var dateObj = new Date(document.lastModified);
var wday = days[dateObj.getDay()];
var lmonth = months[dateObj.getMonth()];
var date = dateObj.getDate();
var fyear = dateObj.getYear();

if (fyear < 2000) fyear = fyear + 1900;
document.write("<p><a href=\"http://validator.w3.org/check?uri=referer\"><img src=\"http://www.austincc.edu/jscholl/images/xhtml.png\" alt=\"Valid XHTML 1.0!\" height=\"31\" width=\"88\" style=\"border: 0px;\" /></a>");

document.write("<a href=\"http://jigsaw.w3.org/css-validator/check/referer\"><img src=\"http://www.austincc.edu/jscholl/images/vcss.png\" alt=\"Valid CSS!\" height=\"31\" width=\"88\" style=\"border: 0px;\" /></a>");

document.write("<br /><i><small>Last updated: " + wday + ", " 
+ lmonth + " " + date + ", " + fyear + "</i></small></p>");


