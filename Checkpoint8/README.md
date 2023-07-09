# Checkpoint8 Submission

- **COURSE INFORMATION: CSN400 NCC**
- **STUDENT’S NAME: MAXWELL AYI-BONTE**
- **STUDENT'S NUMBER: 108455197** 
- **GITHUB USER_ID: 108455197-myseneca**
- **TEACHER’S NAME: ATOOSA NASIRI**

### Table of Contents
1. [Part A - Creating & Configuring VMs - Using Azure CLI Scripts](#header)
2. [Part B - Basic Connectivity - Linux VMs Firewall Setting](#header)
3. [Part C - Azure Cost Analysis Charts](#header)

### Part A - Creating & Configuring VMs - Using Azure CLI Scripts

#### VM list
```
az vm list --output table

Name    ResourceGroup      Location    Zones
------  -----------------  ----------  -------
LR-87   STUDENT-RG-954059  canadaeast
LS-87   STUDENT-RG-954059  canadaeast
WC-87   STUDENT-RG-954059  canadaeast
WS-87   STUDENT-RG-954059  canadaeast

```

#### NSG list
```
az network nsg list -o table

Location    Name       ProvisioningState    ResourceGroup      ResourceGuid
----------  ---------  -------------------  -----------------  ------------------------------------
canadaeast  LR-87-nsg  Succeeded            Student-RG-954059  35567461-b574-418b-9452-b774e7583255
canadaeast  LR-NSG-87  Succeeded            Student-RG-954059  2bc646dd-4302-4ddd-82a8-7fe0c8f0a8db
canadaeast  LS-87-nsg  Succeeded            Student-RG-954059  7283f85c-1b0d-4271-84f7-dba0fbaf071a
canadaeast  LS-NSG-87  Succeeded            Student-RG-954059  cda845d4-e8fb-43f3-a7c1-2c52714b1072
canadaeast  WC-NSG-87  Succeeded            Student-RG-954059  9d85b8b4-b65e-4980-be79-b98a697c5edb
canadaeast  WS-NSG-87  Succeeded            Student-RG-954059  9b74cca8-7a38-474d-bc15-9611e482df87

```

#### NIC list
```
az network nic list -o table

EnableAcceleratedNetworking    EnableIPForwarding    Location    Name      NicType    ProvisioningState    ResourceGroup      ResourceGuid                          VnetEncryptionSupported    MacAddress       
  Primary
-----------------------------  --------------------  ----------  --------  ---------  -------------------  -----------------  ------------------------------------  -------------------------  -----------------  ---------
False                          False                 canadaeast  lr-87     Standard   Succeeded            Student-RG-954059  a26f799a-793d-4563-b027-a8f08f21bef7  False
True                           False                 canadaeast  lr-8785   Standard   Succeeded            Student-RG-954059  a1fdb81a-9ef6-4b61-b1a1-18bb598935e5  False                      00-0D-3A-F4-FD-C1  True
False                          False                 canadaeast  ls-87     Standard   Succeeded            Student-RG-954059  52c38412-072a-436a-b7df-f335c10b2b16  False
True                           False                 canadaeast  ls-87643  Standard   Succeeded            Student-RG-954059  77c922c2-1cb1-4a50-84e9-c2be91ff14ca  False                      00-0D-3A-F4-E4-8A  True
False                          False                 canadaeast  wc-87     Standard   Succeeded            Student-RG-954059  d4b7889f-abe1-45a2-8c27-a97b69b2a3ac  False                      00-0D-3A-0A-02-2C  True
False                          False                 canadaeast  ws-87     Standard   Succeeded            Student-RG-954059  aa36273f-902d-4eb5-a226-d5c167627312  False                      00-0D-3A-F4-3D-0C

```

#### Disk list
```
az disk list -o table
Name                                             ResourceGroup      Location    Zones    Sku              OsType    SizeGb    ProvisioningState
-----------------------------------------------  -----------------  ----------  -------  ---------------  --------  --------  -------------------
LR-87_OsDisk_1_37ee046d584f4196bb3f6c0ab76d6932  STUDENT-RG-954059  canadaeast           Standard_LRS     Linux     64        Succeeded
LS-87_OsDisk_1_559d77320c8d443699346db8e0286c4b  STUDENT-RG-954059  canadaeast           Standard_LRS     Linux     64        Succeeded
WC-87_OsDisk_1_4c10da1938be4eb8ab4952552c98208d  STUDENT-RG-954059  canadaeast           StandardSSD_LRS  Windows   127       Succeeded
WS-87_OsDisk_1_2fdbc93eb5d94950ae71d9c249a26c1d  STUDENT-RG-954059  canadaeast           StandardSSD_LRS  Windows   127       Succeeded

```
