#!/bin/sh
echo "Get Diffs"

X=${branchname:default}
echo $X
git config --global user.email "sfdx_izzivlocity@noreply.github.com"
git config --global user.name "izzi-cablevision/SFDX_izziVlocity"
CURREN_Branch= git branch -a
VAR= git diff --name-only remotes/origin/$X..$CURREN_Branch