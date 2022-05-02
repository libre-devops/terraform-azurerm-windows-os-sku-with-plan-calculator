#!/usr/bin/env bash

LOCATION="uksouth"
PUBLISHER="center-for-internet-security-inc"
OFFER="cis-windows-server-2012-r2-v2-2-1-l2"
VERSION="Latest"
SKU="cis-ws2012-r2-l2"

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


