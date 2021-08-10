Provisioning Kubernetes clusters on Azure with Terraform modules and Toggle
===================================================================================

Prerequisites
-------------  

* Azure Subscription
* Azure cli
* Terraform version v0.15.4 or above 

------------------------------------------------------------------------------------

Use of toggles in local.tf file 
------------------------------- 

```
storage = {
        toggles = {
           create_storage   = true
           
        }
        storage_config = {
            count                     = 1
            name                      = "dcastorage"
            account_tier              = "Standard"
            replication_type          = "LRS"
            tags                      =  {   }
        }
    } 
```
Based on the value that we provide at create_storage stack will be created if create_storage is false stack will not be created if it's  
true stack will be created.






