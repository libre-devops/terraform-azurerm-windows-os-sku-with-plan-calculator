#!/usr/bin/env bash

LOCATION="uksouth"
PUBLISHER="Oracle"
OFFER="Oracle-Linux"
VERSION="Latest"
SKU="cis-ws2019-l2"

###

az vm image list-publishers \
--location ${LOCATION} \
-o table > "AzurePublisherList$(date +'%d%m%Y').txt"

az vm image list-offers \
--location ${LOCATION} \
--publisher ${PUBLISHER} \
-o table > "Azure${PUBLISHER}OfferList$(date +'%d%m%Y').txt"

az vm image list-skus \
--location ${LOCATION} \
--offer ${OFFER} \
--publisher ${PUBLISHER} \
-o table > "Azure${PUBLISHER}SkuList$(date +'%d%m%Y').txt"


if [ -n "$(az vm image list --publisher ${PUBLISHER} --sku ${SKU} --all --query \
    "[?offer=='${OFFER}'].version" -o tsv | sort -u | tail -n 1)" ]; then

    latest="$(az vm image list --publisher ${PUBLISHER} --sku ${SKU} --all --query \
    "[?offer=='${OFFER}'].version" -o tsv | sort -u | tail -n 1)"

    az vm image show \
    --location ${LOCATION} \
    --offer ${OFFER} \
    --publisher ${PUBLISHER} \
    --sku ${SKU} \
    --version ${latest} \
    -o table > "Azure${PUBLISHER}${OFFER}LatestValues$(date +'%d%m%Y').txt"

    else
      echo "No ${VERSION} has been found, skipping"
fi


