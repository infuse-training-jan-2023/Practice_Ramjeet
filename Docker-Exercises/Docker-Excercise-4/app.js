
// Requiring the module
const moment = require('moment');
   
// The format() function to format the date 
var formatedDate = moment().format(
    "dddd, MMMM Do YYYY, h:mm:ss a");
console.log(formatedDate);