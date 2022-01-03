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
    VAR= git diff --name-only remotes/origin/develop..remotes/origin/$Branch
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..remotes/origin/$Branch
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..remotes/origin/$Branch
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..remotes/origin/$Branch
fi
echo $VAR