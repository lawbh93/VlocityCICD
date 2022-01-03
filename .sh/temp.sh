#!/bin/sh
echo "Get Diffs"
git config --global user.email "VlocityCICD@noreply.github.com"
git config --global user.name "lawbh93/VlocityCICD"
CURREN_Branch= git branch -a
Branch= ${BRANCHNAME:default}
echo 'current'
echo $Branch > TEXT
X=${TARGET:default}
echo $X
if [[ " $X " =~  'develop' ]]; then
    VAR= git diff --name-only remotes/origin/develop..$Branch
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..$Branch
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..$Branch
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..$Branch
fi
echo $VAR