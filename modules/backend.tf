# terraform {
#   backend "azurerm" {
#     resource_group_name  = "teraform-statefile"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
#     storage_account_name = "terraformstatefildemo"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "terraform-test-ctr"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "prod.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
#   }
# }