#!/bin/sh
echo "Get Diffs"
git config --global user.email "sfdx_izzivlocity@noreply.github.com"
git config --global user.name "izzi-cablevision/SFDX_izziVlocity"
CURREN_Branch= git branch -a
VAR= git diff --name-only remotes/origin/develop..$CURREN_Branch