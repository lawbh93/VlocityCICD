const core = require('@actions/core');
const github = require('@actions/github');

var fs = require("fs")
// Intitializing the readFileLines with filename
process.argv.forEach((val, index) => {
   console.log(`${index}: ${val}`);
 });