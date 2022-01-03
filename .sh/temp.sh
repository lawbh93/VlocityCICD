#!/bin/sh
echo "Get Diffs"
git config --global user.email "VlocityCICD@noreply.github.com"
git config --global user.name "lawbh93/VlocityCICD"
BRANCH=${BRANCHNAME:default}
echo 'current'
echo $BRANCH
X=${TARGET:default}
echo $X
if [[ " $X " =~  'develop' ]]; then
    VAR= git diff --name-only remotes/origin/develop..remotes/origin/$BRANCH
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..remotes/origin/$BRANCH
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..remotes/origin/$BRANCH
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..remotes/origin/$BRANCH
fi
echo $VAR