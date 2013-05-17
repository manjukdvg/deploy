#!/bin/bash

BRANCH_NAME=master
cd apps/st
git checkout $BRANCH_NAME
git pull origin $BRANCH_NAME
cd ..

spree_dir= ( glue spree-affiliate spree-store-credits spree_auth_devise spree_active_sale spree_ajax_add_to_cart spree_address_book spree_sunspot spree_size_chart spree_$

for i in "${spree_dir[@]}"
do
        echo $i
        cd $i
        git checkout $i
        git pull origin $i
        cd ..
done

#touch tmp/restart.txt



