#!/bin/bash

BRANCH_NAME=master
git checkout $BRANCH_NAME
git pull origin $BRANCH_NAME
cd ..

pree_dir=(glue spree-affiliate spree-store-credits spree_auth_devise spree_active_sale spree_ajax_add_to_cart spree_address_book spree_sunspot spree_size_chart spree_taxon_promo spree_pos spree_static_content spree_variant_options spree_wishlist spree_social spree_ebsin spree_related_products spree_store_credits spree_editor spree_minicart spree_styletag_classic)


for i in "${spree_dir[@]}"
do
        echo $i
        cd $i
        git checkout $i
        git pull origin $i
        cd ..
done

#touch tmp/restart.txt



