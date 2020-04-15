data "azurerm_resource_group" "test" {
  name = "TeamPass_Resource_Group"
}



resource "azurerm_public_ip" "publicip" {
    name                         =   "testing"
    location                     =   var.location
    resource_group_name          =   "${data.azurerm_resource_group.test.name}"
    allocation_method            =   "Dynamic"

    tags = {
        environment =   var.tags_environment_publicip
    }
}
