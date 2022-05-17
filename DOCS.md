## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_standard_os"></a> [standard\_os](#input\_standard\_os) | n/a | `map` | <pre>{<br>  "CISWindowsServer2012L2": "center-for-internet-security-inc,cis-windows-server-2012-r2-v2-2-1-l2,cis-ws2012-r2-l2",<br>  "CISWindowsServer2016L1": "center-for-internet-security-inc,cis-windows-server-2016-v1-0-0-l1,cis-ws2016-l1",<br>  "CISWindowsServer2016L2": "center-for-internet-security-inc,cis-windows-server-2016-v1-0-0-l2,cis-ws2016-l2",<br>  "CISWindowsServer2019L1": "center-for-internet-security-inc,cis-windows-server-2019-v1-0-0-l1,cis-ws2019-l1",<br>  "CISWindowsServer2019L2": "center-for-internet-security-inc,cis-windows-server-2019-v1-0-0-l2,cis-ws2019-l2"<br>}</pre> | no |
| <a name="input_vm_os_simple"></a> [vm\_os\_simple](#input\_vm\_os\_simple) | If using this module, pass one of the keys as the variable to get that image properties | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_calculated_value_os_offer"></a> [calculated\_value\_os\_offer](#output\_calculated\_value\_os\_offer) | Gets the offer value |
| <a name="output_calculated_value_os_publisher"></a> [calculated\_value\_os\_publisher](#output\_calculated\_value\_os\_publisher) | Gets the offer value |
| <a name="output_calculated_value_os_sku"></a> [calculated\_value\_os\_sku](#output\_calculated\_value\_os\_sku) | Gets the OS value |
