variable "standard_os" {
  default = {
    "CISWindowsServer2012L2"          = "center-for-internet-security-inc,cis-windows-server-2012-r2-v2-2-1-l2,cis-ws2012-r2-l2",
    "CISWindowsServer2016L1"          = "center-for-internet-security-inc,cis-windows-server-2016-v1-0-0-l1,cis-ws2016-l1",
    "CISWindowsServer2016L2"          = "center-for-internet-security-inc,cis-windows-server-2016-v1-0-0-l2,cis-ws2016-l2",
    "CISWindowsServer2019L1"          = "center-for-internet-security-inc,cis-windows-server-2019-v1-0-0-l1,cis-ws2019-l1",
    "CISWindowsServer2019L2"          = "center-for-internet-security-inc,cis-windows-server-2019-v1-0-0-l2,cis-ws2019-l2",
  }
}

variable "vm_os_simple" {
  default     = ""
  description = "If using this module, pass one of the keys as the variable to get that image properties"
}

# Definition of the standard OS with "SimpleName" = "publisher,offer,sku", this can have many more skus added to it
