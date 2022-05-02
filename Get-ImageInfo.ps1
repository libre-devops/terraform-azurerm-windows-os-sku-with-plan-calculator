#!/usr/bin/env pwsh

$Location = "uksouth"
$Publisher = "MicrosoftWindowsServer"
$Offer = "WindowsServer"
$Version = "Latest"
$Sku = "2019-Datacenter"


Get-AzVMImagePublisher `
-Location $Location | Select-Object PublisherName | Out-File -FilePath "AzurePublisherList$(Get-Date -Format 'ddMMyyyy').txt" ; `

Get-AzVMImageOffer `
-Location $Location `
-PublisherName $Publisher | Select-Object Offer | Out-File -FilePath "Azure${Publisher}OfferList$(Get-Date -Format 'ddMMyyyy').txt"

Get-AzVMImageSku `
-Location $Location `
-PublisherName $Publisher `
-Offer $Offer | Select-Object Skus | Out-File -FilePath "Azure${Publisher}SkuList$(Get-Date -Format 'ddMMyyyy').txt"

Get-AzVmImage `
-Location $Location `
-PublisherName $Publisher `
-Offer $Offer `
-Skus $Sku