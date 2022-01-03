#!/bin/sh
echo "Get Diffs"
git config --global user.email "VlocityCICD@noreply.github.com"
git config --global user.name "lawbh93/VlocityCICD"

X=${TARGET:default}
echo $X
CURRENT_Branch= git branch --show-current
echo 'Current branch'
echo $CURRENT_Branch
if [[ " $X " =~  'develop' ]]; then
    VAR= git diff --name-only remotes/origin/develop..$CURRENT_Branch
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..$CURRENT_Branch
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..$CURRENT_Branch
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..$CURRENT_Branch
fi
echo $VAR