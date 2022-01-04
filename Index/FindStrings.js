const core = require('@actions/core');
const github = require('@actions/github');

var fs = require("fs");
var differences= [];

// Intitializing the readFileLines with filename
process.argv.forEach((val, index) => {
   console.log(`${index}: ${val}`);
   if(val.includes('DataPackMetadata')) {
      differences.push(val);    
   }
   console.log('differences: '+differences);
 });

 for(let i=0;i<differences.length;i++) {
   var str =differences[i] ;
   var tokens = str.split("DataPackMetadata/Pricebook2/");
   var drive = tokens[0];
   var fileName = tokens[tokens.length - 1];
   var len = drive.length + fileName.length;
   //remove the current lenth and also space for 3 dots and 2 slashes
     console.log(fileName);
   }
 
