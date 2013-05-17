#!/bin/bash

BRANCH_NAME=master
git checkout $BRANCH_NAME
git pull origin $BRANCH_NAME


spree_dir=(glue spree-affiliate spree-store-credits)
echo " array " $spree_dir

for i in "${spree_dir[@]}"
do
        echo $i
        cd $i
        git checkout $BRANCH_NAME
        git pull origin $BRANCH_NAME
        cd ..
done

#touch tmp/restart.txt



