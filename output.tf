output "calculated_value_os_offer" {
  description = "Gets the offer value"
  value       = element(split(",", lookup(var.standard_os, var.vm_os_simple, "")), 1)
}

output "calculated_value_os_publisher" {
  description = "Gets the offer value"
  value       = element(split(",", lookup(var.standard_os, var.vm_os_simple, "")), 0)
}

output "calculated_value_os_sku" {
  description = "Gets the OS value"
  value       = element(split(",", lookup(var.standard_os, var.vm_os_simple, "")), 2)
}
