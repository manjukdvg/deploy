#!/bin/bash

BRANCH_NAME=master
cd $HOME/apps/st
git checkout $BRANCH_NAME
git pull origin $BRANCH_NAME
touch tmp/restart.txt

