#!/bin/bash
set -b

GIT_BRANCH=$1
if [ $GIT_BRANCH ]; then
    # Merging to Master
    echo "Merging to Branch $GIT_BRANCH to Master" 
    git checkout master
    git pull
    git submodule update
    git merge $GIT_BRANCH
    git push origin master

    # Merging to Develop
    git checkout develop
    git pull
    git submodule update
    git merge $GIT_BRANCH
    git push origin develop
fi