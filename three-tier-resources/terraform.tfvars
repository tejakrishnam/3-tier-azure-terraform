# Name for the environment
environment                              = "development"

# client id and secret details
client_id                                = "00000000-0000-0000-0000-000000000000"
client_secret                            =  "*******"
tenant_id                                = "10000000-2000-3000-4000-500000000000"

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

