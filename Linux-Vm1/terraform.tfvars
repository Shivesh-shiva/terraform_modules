virtual_machine = {
  "vm" = {
    "location" = "eastus",
    "nic_name" = "linux_nic1",
    "vmname"   = "shiva-nginx-linux-vm01",
    "size"     = "Standard_D2s_v3"
  }
}

subnet_name = "frontend"
vnet_name   = "shivesh-vnet"
rgname      = "shivesh_RG1"
kvname      = "shiveshkv123"
sec1        = "username"
sec2        = "password"