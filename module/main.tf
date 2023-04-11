
resource "azurerm_resource_group" "example" {
  name     = "${var.rg-name}"
  location = "${var.location}"
}

resource "azurerm_logic_app_workflow" "example" {
  name                = "${var.name}"
  location            = "${azurerm_resource_group.example.location}"
  resource_group_name = "${azurerm_resource_group.example.name}"
}

