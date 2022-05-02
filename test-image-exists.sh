#!/usr/bin/env bash

LOCATION="uksouth"
PUBLISHER="kinvolk"
OFFER="flatcar-container-linux-free"
VERSION="Latest"
SKU="stable"

###

az vm image list --all \
--location ${LOCATION} \
--offer ${OFFER} \
--publisher ${PUBLISHER} \
--sku ${SKU}

