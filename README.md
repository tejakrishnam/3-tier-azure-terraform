# Azure Terraform Three Tier environment

This repository allows you to deploy a 3 tier architecture infrastructure environment. 

three tier resources: Build and Deploy baseline state with network component 
 
##### folder structure of the repo
Below snapshot provide folder structure of terraform scripts.  
- Common-modules 
  * Resource Group
-	three tier resources
  * Azure resources
    * VNET
    * Subnet 
    * NSG
    * NSG association
    * Route Table 
    * Route table association
    * VNET peering 
    * resource-layer (main layer)

#### Execution Steps
Assuming you are in three-tier-resources folder path :
1.	Execute terraform script using below commands
* terraform init
* terraform plan
* terraform apply


#### Input :
1. terraform.tfvars in three-tier-resources has to configured properly with required inputs. No other inputs required.
Currently, used terraform.tfvars file looks as shown below: 

```
# Name for the environment
environment                              = "development"

# Parameter for Creating Azure Resources
region                                   = "Southeast Asia"
resource_group_name                      = "sanetwork"
# Parameter for Create Virtual network and Subnets
vnet_name                                = ["sa-vn-1","sa-vn-2"]
vnet_address                             = ["10.100.0.0/16","10.200.0.0/16"]
subnet_names                             = ["Frontend","Application","Database"]
subnet_er                                = ["GatewaySubnet"]
subnet_management                        = ["management"]
subnet_er_range                          = ["10.100.3.0/24"]
subnet_management_range                  = ["10.100.4.0/24"]
subnet_range                             = ["10.100.0.0/24","10.100.1.0/24","10.100.2.0/24"]

# Parameter for Create Network Security Groups
nsg_names                                = ["Frontend","Application","Database"]
nsg_tier1_rules                          = ["Allow_Port80_Inbound","Allow_Port443_Inbound","Allow_Port3389_Inbound","Deny_Virtualnetwork_Inbound"]
nsg_tier2_rules                          = ["Deny_Virtualnetwork_Inbound","Allow_Azuremonitor_Outbound","Deny_Internet_Outbound"]
nsg_tier3_rules                          = ["Deny_Virtualnetwork_Inbound","Allow_Azuremonitor_Outbound","Deny_Internet_Outbound"]

# Parameter for Create Route Table
rt_names                                 = ["Frontend","Application","Database","gateway","management"]

# Parameter for Azure Resources Tags
tagvalue                           =  {

      environment                  = "Dev"
}

```