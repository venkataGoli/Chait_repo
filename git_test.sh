#!/bin/bash

GIT_BRANCH=$1
if [ $GIT_BRANCH ]; then
    # Merging to Master
    echo "============ Merging to Branch $GIT_BRANCH to Master ============" 
    echo "===== Checking out master ======="
    git checkout master
    echo "===== Updating master ======="
    git pull
    echo "===== Submodule update on master ======="
    git submodule update
    echo "===== Mergin $GIT_BRANCH to master ======="
    git merge $GIT_BRANCH
    echo "===== Pushing master ======="
    git push origin master

    # Merging to Develop
    echo " ============ Merging to Branch $GIT_BRANCH to Develop ============ " 
    echo "===== Checking out develop ======="
    git checkout develop
    echo "===== Updating develop ======="
    git pull
    echo "===== Submodule update on develop ======="
    git submodule update
    echo "===== Mergin $GIT_BRANCH to develop ======="
    git merge $GIT_BRANCH
    echo "===== Pushing develop ======="
    git push origin develop
fi