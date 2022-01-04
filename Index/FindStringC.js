const core = require("@actions/core");
const github = require("@actions/github");

var fs = require('fs');
var fse = require('fs-extra');

var differences = [];

// Intitializing the readFileLines with filename
process.argv.forEach((val, index) => {
  console.log(`${index}: ${val}`);
  if (val.includes("tmpDatapacks")) {
    differences.push(val);
  }
  console.log("differences: " + differences);
});

try {
  for (let i = 0; i < differences.length; i++) {
    var str = differences[i];
    console.log(str);
  }
} catch (err) {
  console.log("Error parsing JSON string:", err);
}