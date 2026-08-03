rgs = {
  rg1 = {
    name     = "resourcegroup1411self-dev"
    location = "southeastasia"
  }
}

storage_accounts = {
  sa1 = {
    name                     = "storageblob1411selfdev" # Storage Account names cannot contain hyphens
    resource_group_name      = "resourcegroup1411self-dev"
    location                 = "southeastasia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnets = {
  vnet1 = {
    name                = "Terraformvnet1-dev"
    address_space       = ["10.0.0.0/16"]
    location            = "southeastasia"
    resource_group_name = "resourcegroup1411self-dev"
  }
}

subnets = {
  subnet1 = {
    name                 = "frontendsubnet1-dev"
    resource_group_name  = "resourcegroup1411self-dev"
    virtual_network_name = "Terraformvnet1-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backendsubnet1-dev"
    resource_group_name  = "resourcegroup1411self-dev"
    virtual_network_name = "Terraformvnet1-dev"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "dbsubnet1-dev"
    resource_group_name  = "resourcegroup1411self-dev"
    virtual_network_name = "Terraformvnet1-dev"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ips = {
  public_ip1 = {
    name                = "publicip1-dev"
    resource_group_name = "resourcegroup1411self-dev"
    location            = "southeastasia"
    allocation_method   = "Static"
  }
  public_ip2 = {
    name                = "publicip2-dev"
    resource_group_name = "resourcegroup1411self-dev"
    location            = "southeastasia"
    allocation_method   = "Static"
  }
  public_ip3 = {
    name                = "publicip3-dev"
    resource_group_name = "resourcegroup1411self-dev"
    location            = "southeastasia"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    name                 = "vm-1-dev"
    resource_group_name  = "resourcegroup1411self-dev"
    location             = "southeastasia"
    size                 = "Standard_B2s"
    admin_username       = "adminuser"
    # admin_password ab yaha nahi likha jaata — Key Vault module isse generate/inject karta hai
    subnet_name          = "frontendsubnet1-dev"
    public_ip_name       = "publicip1-dev"
    virtual_network_name = "Terraformvnet1-dev"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    offer                = "UbuntuServer"
    sku                  = "18.04-LTS"
    version              = "latest"
    publisher            = "Canonical"
  }
  vm2 = {
    name                 = "vm-2-dev"
    resource_group_name  = "resourcegroup1411self-dev"
    location             = "southeastasia"
    size                 = "Standard_B2s"
    admin_username       = "adminuser"
    # admin_password ab yaha nahi likha jaata — Key Vault module isse generate/inject karta hai
    subnet_name          = "backendsubnet1-dev"
    public_ip_name       = "publicip2-dev"
    virtual_network_name = "Terraformvnet1-dev"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    offer                = "UbuntuServer"
    sku                  = "18.04-LTS"
    version              = "latest"
    publisher            = "Canonical"
  }
  vm3 = {
    name                 = "vm-3-dev"
    resource_group_name  = "resourcegroup1411self-dev"
    location             = "southeastasia"
    size                 = "Standard_B2s"
    admin_username       = "adminuser"
    # admin_password ab yaha nahi likha jaata — Key Vault module isse generate/inject karta hai
    subnet_name          = "dbsubnet1-dev"
    public_ip_name       = "publicip3-dev"
    virtual_network_name = "Terraformvnet1-dev"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    offer                = "UbuntuServer"
    sku                  = "18.04-LTS"
    version              = "latest"
    publisher            = "Canonical"
  }
}

key_vaults = {
  key_vault1 = {
    name                        = "keyvault1411selfdev"   # change kiya
    resource_group_name        = "resourcegroup1411self-dev"
    location                   = "southeastasia"
    sku_name                    = "standard"
    purge_protection_enabled    = true
    soft_delete_retention_days  = 90
    tenant_id                   = "37a7890a-efe4-4836-9716-c9bdee7d3e79"
    object_id                   = "35c316d1-30ca-4220-9ad8-e3aaf6ce2ba1"
  }
}