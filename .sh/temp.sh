#!/bin/sh
echo "Get Diffs"
git config --global user.email "VlocityCICD@noreply.github.com"
git config --global user.name "lawbh93/VlocityCICD"
CURREN_Branch= git branch -a

X=${TARGET:default}
echo $X
if [[ " $X " =~  'develop' ]]; then
    VAR= git diff --name-only remotes/origin/develop..$CURREN_Branch > differenceFromDev.txt
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..$CURREN_Branch > differenceFromDev.txt
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..$CURREN_Branch > differenceFromDev.txt
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..$CURREN_Branch > differenceFromDev.txt
fi
echo $VAR