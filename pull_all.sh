#!/bin/bash

## 'pull_all.sh' ##

# Parcours all subdirectories until finding git repository and pull updates from there
# Show errors in a colorful and continue process

if [ $# -eq 0 ]
then
    find . -maxdepth 1 -type d \( ! -name . \) \( ! -name Contributions \) \( ! -name others \) -exec sh -c '(cd {} && pwd ; git pull)' ';'
else
    find $1 -maxdepth 1 -type d \( ! -name . \) \( ! -name Contributions \) \( ! -name others \) -exec sh -c '(cd {} && pwd ; git pull)' ';'
fi

echo 'done :)'