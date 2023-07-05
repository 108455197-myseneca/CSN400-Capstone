# Checkpoint7 Submission

- **COURSE INFORMATION: CSN400 NCC**
- **STUDENT’S NAME: MAXWELL AYI-BONTE**
- **STUDENT'S NUMBER: 108455197** 
- **GITHUB USER_ID: 108455197-myseneca**
- **TEACHER’S NAME: ATOOSA NASIRI**

### Table of Contents
1. [Part A - Creating & Configuring VMs - Using Portal](#header)
2. [Part B - Enable IP_Forwarding - Using Portal](#header)
3. [Part C - Basic Connectivity - VM Configuration](#header)
4. [Part D - Creating & Configuring VM Images - Using Portal](#header)
5. [Part E - Azure Cost Analysis Charts](#header)
6. [Part F - Create Customized Azure Dashboard](#header)

### Part A - Creating & Configuring VMs - Using Portal

**1. What is the difference between Windows machine NSG and Linux machine NSG rules? Why? Do not give screenshots just describe the difference? Do you need a rule for ssh or rdp? What happens if you delete specific ssh and rdp rules?**
- Linux and Windows machines use different protocols and ports for their NSG rules. SSH (port 22) is typically used by Linux, while RDP (port 3389) is typically used by Windows. It may be possible to block remote access using SSH or RDP protocols by deleting specific rules.

**2. Work from Azure Bash CLI in **Portal** to get a list of your VM, NSG, NIC, and Disks. You can start with the below commands. Make sure the outputs in table format are embedded in your submission.**

```
az group list --out table

Name               Location    Status
-----------------  ----------  ---------
Bastion_RG         canadaeast  Succeeded
NetworkWatcherRG   canadaeast  Succeeded
Student-RG-954059  canadaeast  Succeeded

```

```
az network nic list -g Student-RG-954059 --out table

EnableAcceleratedNetworking    EnableIPForwarding    Location    Name    NicType    ProvisioningState    ResourceGroup      ResourceGuid                          VnetEncryptionSupported    MacAddress
Primary
-----------------------------  --------------------  ----------  ------  ---------  -------------------  -----------------  ------------------------------------  -------------------------  -----------------  
---------
False                          False                 canadaeast  lr-87   Standard   Succeeded            Student-RG-954059  fe6e8b1e-9ced-4003-b05f-db53e8685292  False
False                          False                 canadaeast  ls-87   Standard   Succeeded            Student-RG-954059  0c582b4e-031d-4591-84c0-bda6ca91e35c  False
False                          False                 canadaeast  wc-87   Standard   Succeeded            Student-RG-954059  ddde5032-94ca-476c-9041-6cac3879a439  False                      00-22-48-6D-AD-0A  
True
False                          False                 canadaeast  ws-87   Standard   Succeeded            Student-RG-954059  7eeb0880-41a6-44f0-b2b7-a9f806b13aa7  False                      00-22-48-D5-27-B9

```

```
az network nsg list -o table

Location    Name       ProvisioningState    ResourceGroup      ResourceGuid
----------  ---------  -------------------  -----------------  ------------------------------------
canadaeast  LR-NSG-87  Succeeded            Student-RG-954059  2bc646dd-4302-4ddd-82a8-7fe0c8f0a8db
canadaeast  LS-NSG-87  Succeeded            Student-RG-954059  cda845d4-e8fb-43f3-a7c1-2c52714b1072
canadaeast  WC-NSG-87  Succeeded            Student-RG-954059  9d85b8b4-b65e-4980-be79-b98a697c5edb
canadaeast  WS-NSG-87  Succeeded            Student-RG-954059  9b74cca8-7a38-474d-bc15-9611e482df87

```

```
az disk list -o table

Name                                             ResourceGroup      Location    Zones    Sku              OsType    SizeGb    ProvisioningState
-----------------------------------------------  -----------------  ----------  -------  ---------------  --------  --------  -------------------
WC-87_OsDisk_1_fb1c6e4b0ca9465d8a7db8a4a6c315a2  STUDENT-RG-954059  canadaeast           StandardSSD_LRS  Windows   127       Succeeded
WS-87_OsDisk_1_bfcc0540d8c34affa2673dbcd0e08679  STUDENT-RG-954059  canadaeast           StandardSSD_LRS  Windows   127       Succeeded

```
