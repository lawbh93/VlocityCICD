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
   var remLen = maxLength - len - 5;
 
   //if remLen < 0, then it will over flow our maxLength to still maintain drive and filename
   if (remLen > 0) {
     //remove first and last elements from the array
     tokens.splice(0, 1);
     tokens.splice(tokens.length - 1, 1);
     //recreate our path
     var path = tokens.join("\\");
     //handle the case of an odd length
     var lenA = Math.ceil(remLen / 2);
     var lenB = Math.floor(remLen / 2);
     //rebuild the path from beginning and end
     var pathA = path.substring(0, lenA);
     var pathB = path.substring(path.length - lenB);
     path = drive + "\\" + pathA + "..." + pathB + "\\" + fileName;
     
   } else {
     console.log(fileName);
   }
 }
