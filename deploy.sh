#!/bin/bash

BRANCH_NAME=master
cd apps/st
git checkout $BRANCH_NAME
git pull origin $BRANCH_NAME
touch tmp/restart.txt

