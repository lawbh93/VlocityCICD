
var fs = require("fs")
// Intitializing the readFileLines with filename
fs.readFile('differenceFromDev.txt',"utf8" ,function(err, data) {
   if(err) throw err;
      var array = data.toString().split("\n");

   for(i in array) {
       console.log(array[i])
      // Printing the response array
      if(array.includes('DataPack.json')) {
          console.log('exist');
      }
   }
});
