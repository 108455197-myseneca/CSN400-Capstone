# Checkpoint6 Submission

- **COURSE INFORMATION: CSN400 NCC**
- **STUDENT’S NAME: MAXWELL AYI-BONTE**
- **STUDENT'S NUMBER: 108455197** 
- **GITHUB USER_ID: 108455197-myseneca**
- **TEACHER’S NAME: ATOOSA NASIRI**

### Table of Contents
1. [Part A - Creating Network Resources using Azure CLI](#header1)
2. [Part B - Working in Azure CLI Bash](#header2)
3. [Part C - Network Review Questions](#header3)
4. [Part D - Creating Virtual Machines using Azure CLI](#header4)

### Part A - Creating Network Resources using Azure CLI
**network_config.sh** Update
```
RG_NAME="Student-RG-954059"     # your student group
LOCATION="Canada East"    # your location
ID="87"          #unique ID assigned to you

Student_vnet_name="Student-954059-vnet"
Student_vnet_address="10.3.46.0/24"
Client_Subnet_name="Virtual-Desktop-Client"
Client_Subnet_address="10.3.46.0/24"
```
**`network_config.sh` File**

[network_config.sh](bash-scripts/network_config.sh)

**`vnet_create.sh` File**

[vnet_create.sh](bash-scripts/vnet_create.sh)

**`route_table_create.sh` File**

[route_table_create.sh](bash-scripts/route_table_create.sh)

**1. In network_config_test.sh what does `if [[ ! $(az group list -o tsv --query "[?name=='$RG_NAME']") ]]` do? Explain your answer.**

The $RG_NAME variable is checked to see if a value (Resource Group) is assigned. A statement returns True if no value is provided, False if a value is provided.

**2. Why is it crucial to check if a resource exist before creating it? What bash syntax do you use to test this? How do you check if a `vnet` exists in vnet_create.sh?**

In large Azure environments, checking if a resource exists before creating it will eliminate confusion errors. A conditional statement can be added to vnet_create.sh to determine if the value of `vnet` is empty or not.

**3. What is the Azure CLI command to create `vnet`? Give the specific command as per your environment and unique ID configuration. What are the required and what are the optional parameters that you need to pass to it?**

The Azure CLI command to create `vnet` is: 
``` bash
az network vnet create -g Student-954059 \
--name Router-87 \
--location canadaeast \
--address-prefix 192.168.87.0/24
```
It is necessary to enter three parameters: `name`, `resource-group`, and `address-prefix`. In terms of optional parameters, it's all about the addresses, as we can either use specific ones or the default ones.

**4. What is the Azure CLI command to create `subnet`? Give the specific command as per your environment and unique ID configuration. What are the required and what are the optional parameters that you need to pass to it?**

The Azure CLI command to create `subnet` is: 
``` bash
az network vnet subnet create --name SN1  \
--g Student-RG-954059 \
--vnet-name Router-87 \
--address-prefix 192.168.87.0/24
```
In order to pass parameters, a `subnet name`, `resource group name`, and `vnet name` should be provided.
