#!/bin/bash

MESSAGE=$1
if [[ -z $MESSAGE ]]; then
    MESSAGE="adding changes"
fi

git add --all
git commit -m "$MESSAGE"

branchName=`git branch | grep "*" | awk -F ' ' '{print $2}'`
if [[ "${branchName}" = "master" ]]; then
    git push
fi

