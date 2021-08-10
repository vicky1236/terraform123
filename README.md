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
Based on the value that we provide at create_storage stack will be created if create_storage is false stack will not be created if it's  true stack will be created.
if count value is 2 two storage resources will be created .
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Running Terraform and Provisioning the stack 
---------------------------------------------
  Step-01: Clone Github repository to the system run the terraform.Make sure that system met all the pre-requisite mentioned above.
```
 git clone https://github.com/vicky1236/terraform123/tree/terraform
 
```
   step-02:Run the below commands in sequence to provision the infrastructure on to the Azure.
 ```
 * terraform init 
 * terraform plan    -var-file = "secret.tfvars" (secret.tfvars for storing sensitive information)
 * terraform apply   -var-file = "secret.tfvars" 
 * terraform destroy -var-file = "secret.tfvars" 
 
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






