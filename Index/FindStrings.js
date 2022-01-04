const core = require('@actions/core');
const github = require('@actions/github');

var fs = require("fs")
// Intitializing the readFileLines with filename
process.argv.forEach(function (val, index, array) {
   console.log(index + ': ' + val);
 });
 