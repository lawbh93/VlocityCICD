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
 
   fs.readFile('./FilePaths.json', 'utf8', (err, jsonString) => {
      if (err) {
          console.log("Error reading file from disk:", err)
          return
      }
      try {
          const DataPackInfo = JSON.parse(jsonString)
          for(let i=0;i<differences.length;i++) {
            var str =differences[i] ;
            for(let j=0;j<DataPackInfo.length;j++) {
               if(str[i].includes(DataPackInfo[j].FilePath)) {
                  var newString=DataPackInfo[j].FilePath;
                  var tokens = str.split(newString);

            var drive = tokens[0];
            var fileName = tokens[tokens.length - 1];
            var len = drive.length + fileName.length;
            //remove the current lenth and also space for 3 dots and 2 slashes
              console.log(fileName);
               }
            }
            }

            
  } catch(err) {
          console.log('Error parsing JSON string:', err)
      }
  })
  