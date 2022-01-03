const core = require('@actions/core');
const github = require('@actions/github');

try {
  // `who-to-greet` input defined in action metadata file
  const branchname = core.getInput('branch-name');
  console.log(`Hello ${branchname}!`);
  core.setOutput("branchHead", branchname);
  // Get the JSON webhook payload for the event that triggered the workflow
  const payload = JSON.stringify(github.context.payload, undefined, 2)
  console.log(`The event payload: ${payload}`);
  
  var execProcess = require("./exec_process.js");
    execProcess.result("bash temp.sh ${branchname}", function(err, response){
    if(!err){
        console.log(response);
    }else {
        console.log(err);
    }
    });


} catch (error) {
  core.setFailed(error.message);
}
