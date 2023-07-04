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

### Part B - Working in Azure CLI Bash

**1. `vnet_list.json` File**
[vnet_list.json](bash-scripts/vnet_list.json)

**2. `student_vnet.json` File**
[student_vnet.json](bash-scripts/student_vnet.json)

**5. `route_list.tbl` File**
[route_list.tbl](bash-scripts/route_list.tbl.txt)

**6. `route_details.json` File**

[route_details.json](bash-scripts/route_details.json)

### Part C - Network Review Questions

1. What is Azure Virtual Network (VNET)?
- The Azure Virtual Network (VNet) lets you set up self-contained virtual networks in Azure. It allows you to regulate the flow of traffic within the network and dictate connectivity.

2. In the context of Hybrid Cloud architecture. How on-prem computers can access resources inside Azure virtual network?
- Azure Virtual Networks (VNets) can be accessed from on-premises computers using a variety of methods in a hybrid cloud architecture: Azure VPN Gateway, Azure ExpressRoute, Azure Virtual WAN, Azure Private Link, and Azure Firewall or Network Virtual Appliances

3. What are the most important benefits of Azure Virtual Networks?
- You can run your applications in an isolated environment.
- By default, subnets in VNets can access the public internet.
- Resources can easily be used to direct traffic.
- The network has a high level of security.

4. What is the difference between Network Security Group (NSG) and Route-Tables?
- The route table, like a networking map, sends traffic from one site to another using the next hop. This creates a "route," but no traffic is filtered. The Azure network security group is used in an Azure virtual network to filter network traffic to and from Azure resources.

5. What is the difference between NSG and Firewalls?
- An Azure Firewall monitors all traffic, but an NSG is more focused and deployed to certain subnets and/or network interfaces. Both firewalls and NSG allow for the application of rules based on IP addresses, port numbers, networks, and subnets.

6. What is a hob-and-spoc network topology and how be deployed in Azure Cloud?
- Multiple spoke networks are linked to a central hub by use of Azure's "hub-and-spoke network topology." Hub-to-hub communication between spoke networks enables centralised control, enhanced security, and effective network communication. By connecting the hub VNet and each spoke VNet, this may be done via Azure Virtual Network peering.

7. In working with Azure VNETs, do you need o to define gateways for Azure to route traffic between subnets?
- In order for Azure to route traffic between subnets, you do not need to establish gateways. Azure doesn't build default routes for subnet address ranges even if a virtual network has subnets and each subnet has a distinct address range.

8. When do you need to configure and use Virtual Network Gateways?
- When it comes to setting up site-to-site VPN connectivity with on-premises networks, VNET-to-VNET connectivity, and ExpressRoute connectivity for dedicated connections between your network and Azure, "Virtual Network Gateways" are setup and used.

### Part D - Creating Virtual Machines using Azure CLI

**1. `vm_list.tbl` File**

[vm_list.tbl](bash-scripts/vm_list.tbl.txt)

**5. `az vm list --out table --out table` File**

The command has no output
