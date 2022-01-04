const core = require('@actions/core');
const github = require('@actions/github');

var fs = require("fs");
var differences= {};

// Intitializing the readFileLines with filename
process.argv.forEach((val, index) => {
   console.log(`${index}: ${val}`);
   if(val.includes('DataPackMetadata')) {
      differences.push($(val));    
   }
   console.log('differences: '+differences);
 });