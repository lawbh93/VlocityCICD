#!/bin/bash
echo "Get Diffs"
git config --global user.email "VlocityCICD@noreply.github.com"
git config --global user.name "lawbh93/VlocityCICD"
BRANCH=${BRANCH:default}
echo 'current'
echo $BRANCH
X=${TARGET:default}
echo $X
if [[ " $X " =~  'develop' ]]; then
    VAR= git diff  remotes/origin/develop..$BRANCH --name-only DataPackMetadata
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff remotes/origin/release..$BRANCH --name-only DataPackMetadata
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff remotes/origin/master..$BRANCH --name-only DataPackMetadata
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff remotes/origin/master..$BRANCH --name-only DataPackMetadata
fi
echo 'Differences start'
echo $VAR
echo 'Differences end'
node Index/FindStrings.js $VAR