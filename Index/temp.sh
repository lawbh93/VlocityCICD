#!/bin/sh
echo "Get Diffs"

X=${TARGET:default}
echo $X
CURREN_Branch= git branch -a
VAR= git diff --name-only remotes/origin/$X..$CURREN_Branch
