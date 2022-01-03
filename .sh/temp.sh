#!/bin/sh
echo "Get Diffs"

X=${TARGET:default}
echo $X
CURREN_Branch= git branch -a

if [[ " $X " =~  'develop' ]]; then
    VAR= git diff --name-only remotes/origin/develop..$CURREN_Branch
elif [[ " $X " =~  'release' ]]; then
    VAR= git diff --name-only remotes/origin/release..$CURREN_Branch
elif [[ " $X " =~  'master' ]]; then
    VAR= git diff --name-only remotes/origin/master..$CURREN_Branch
# Siguiente condicion solo para fines de pruebas
elif [[ " $X " =~  'updateMetadata' ]]; then
    VAR= git diff --name-only remotes/origin/master..$CURREN_Branch
fi
echo $VAR