#!/bin/sh
echo "Get Diffs"
git config --global user.email "VlocityCICD@noreply.github.com"
git config --global user.name "lawbh93/VlocityCICD"
BRANCH=${BRANCH:default}
echo 'current'
echo $BRANCH
X=${TARGET:default}
echo $X
if [[ " $X " =~  'develop' ]]; then
    VAR= git diff --name-only remotes/origin/develop..$BRANCH
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..$BRANCH
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..$BRANCH
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..$BRANCH
fi
echo $VAR