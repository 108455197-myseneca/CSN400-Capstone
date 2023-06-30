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

**1. In network_config_test.sh what does `if [[ ! $(az group list -o tsv --query "[?name=='$RG_NAME']") ]]` do? Explain your answer._**

The $RG_NAME variable is checked to see if a value (Resource Group) is assigned. A statement returns True if no value is provided, False if a value is provided.

**2. Why is it crucial to check if a resource exist before creating it? What bash syntax do you use to test this? How do you check if a `vnet` exists in vnet_create.sh?_**

In large Azure environments, checking if a resource exists before creating it will eliminate confusion errors. A conditional statement can be added to vnet_create.sh to determine if the value of `vnet` is empty or not.

**3. What is the Azure CLI command to create `vnet`? Give the specific command as per your environment and unique ID configuration. What are the required and what are the optional parameters that you need to pass to it?_**

The Azure CLI command to create `vnet` is:
