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

Run a command in CLI that lists all your Custom Images. Change the output format to table format and embed the answer in your submission.

```

az vm image list -o table

You are viewing an offline list of images, use --all to retrieve an up-to-date list
Architecture    Offer                         Publisher               Sku                                 Urn                                                                             UrnAlias
   Version
--------------  ----------------------------  ----------------------  ----------------------------------  ------------------------------------------------------------------------------  -----------------------  ---------
x64             CentOS                        OpenLogic               7.5                                 OpenLogic:CentOS:7.5:latest                                                     CentOS
   latest
x64             CentOS                        OpenLogic               8_5-gen2                            OpenLogic:CentOS:8_5-gen2:latest                                                CentOS85Gen2
   latest
x64             debian-10                     Debian                  10                                  Debian:debian-10:10:latest                                                      Debian
   latest
x64             debian-11                     Debian                  11-backports-gen2                   Debian:debian-11:11-backports-gen2:latest                                       Debian11
   latest
x64             flatcar-container-linux-free  kinvolk                 stable                              kinvolk:flatcar-container-linux-free:stable:latest                              Flatcar
   latest
x64             flatcar-container-linux-free  kinvolk                 stable-gen2                         kinvolk:flatcar-container-linux-free:stable-gen2:latest                         FlatcarLinuxFreeGen2  
   latest
x64             opensuse-leap-15-3            SUSE                    gen2                                SUSE:opensuse-leap-15-3:gen2:latest                                             openSUSE-Leap
   latest
x64             openSUSE-leap-15-4            SUSE                    gen2                                SUSE:openSUSE-leap-15-4:gen2:latest                                             OpenSuseLeap154Gen2   
   latest
x64             RHEL                          RedHat                  7-LVM                               RedHat:RHEL:7-LVM:latest                                                        RHEL
   latest
x64             RHEL                          RedHat                  8-lvm-gen2                          RedHat:RHEL:8-lvm-gen2:latest                                                   RHELRaw8LVMGen2       
   latest
x64             sles-15-sp3                   SUSE                    gen2                                SUSE:sles-15-sp3:gen2:latest                                                    SLES
   latest
x64             sles-15-sp3                   SUSE                    gen2                                SUSE:sles-15-sp3:gen2:latest                                                    SuseSles15SP3
   latest
x64             UbuntuServer                  Canonical               18.04-LTS                           Canonical:UbuntuServer:18.04-LTS:latest                                         UbuntuLTS
   latest
x64             0001-com-ubuntu-server-jammy  Canonical               22_04-lts-gen2                      Canonical:0001-com-ubuntu-server-jammy:22_04-lts-gen2:latest                    Ubuntu2204
   latest
x64             WindowsServer                 MicrosoftWindowsServer  2022-Datacenter                     MicrosoftWindowsServer:WindowsServer:2022-Datacenter:latest                     Win2022Datacenter     
   latest
x64             WindowsServer                 MicrosoftWindowsServer  2022-datacenter-azure-edition-core  MicrosoftWindowsServer:WindowsServer:2022-datacenter-azure-edition-core:latest  Win2022AzureEditionCore  latest
x64             WindowsServer                 MicrosoftWindowsServer  2019-Datacenter                     MicrosoftWindowsServer:WindowsServer:2019-Datacenter:latest                     Win2019Datacenter     
   latest
x64             WindowsServer                 MicrosoftWindowsServer  2016-Datacenter                     MicrosoftWindowsServer:WindowsServer:2016-Datacenter:latest                     Win2016Datacenter     
   latest
x64             WindowsServer                 MicrosoftWindowsServer  2012-R2-Datacenter                  MicrosoftWindowsServer:WindowsServer:2012-R2-Datacenter:latest                  Win2012R2Datacenter   
   latest
x64             WindowsServer                 MicrosoftWindowsServer  2012-Datacenter                     MicrosoftWindowsServer:WindowsServer:2012-Datacenter:latest                     Win2012Datacenter     
   latest
x64             WindowsServer                 MicrosoftWindowsServer  2008-R2-SP1                         MicrosoftWindowsServer:WindowsServer:2008-R2-SP1:latest                         Win2008R2SP1
   latest

```
Delete your VMs using the proper script after your work is completed. Run a command in CLI that lists all your VMs.

```

az vm list --output table

mayi-bonte@DESKTOP-2ISBIFD:/mnt/c/Users/maxwe/Documents/CSN400-2234/bash-scripts$ az network nsg list -o table
Location    Name       ProvisioningState    ResourceGroup      ResourceGuid
----------  ---------  -------------------  -----------------  ------------------------------------
canadaeast  LR-87-nsg  Succeeded            Student-RG-954059  35567461-b574-418b-9452-b774e7583255
canadaeast  LR-NSG-87  Succeeded            Student-RG-954059  2bc646dd-4302-4ddd-82a8-7fe0c8f0a8db
canadaeast  LS-87-nsg  Succeeded            Student-RG-954059  7283f85c-1b0d-4271-84f7-dba0fbaf071a
canadaeast  LS-NSG-87  Succeeded            Student-RG-954059  cda845d4-e8fb-43f3-a7c1-2c52714b1072
canadaeast  WC-NSG-87  Succeeded            Student-RG-954059  9d85b8b4-b65e-4980-be79-b98a697c5edb
canadaeast  WS-NSG-87  Succeeded            Student-RG-954059  9b74cca8-7a38-474d-bc15-9611e482df87
mayi-bonte@DESKTOP-2ISBIFD:/mnt/c/Users/maxwe/Documents/CSN400-2234/bash-scripts$ az network nic list -o table

mayi-bonte@DESKTOP-2ISBIFD:/mnt/c/Users/maxwe/Documents/CSN400-2234/bash-scripts$ az disk list -o table

mayi-bonte@DESKTOP-2ISBIFD:/mnt/c/Users/maxwe/Documents/CSN400-2234/bash-scripts$

```

### Part B - Basic Connectivity - Linux VMs Firewall Setting

Run commands that show the status of the Apache server and MariDB server in your LS-xx. Embed the output as a bash snippet.

```
sudo systemctl status apache2

```

```
sudo systemctl status mariadb

```

Run a command in LR-xx that show iptables chains. What is the default setting? How could you improve these settings to be less vulnerable to attacks?

```
iptables -L -n -v

```
- iptables default setting is typically to accept all incoming, outgoing, and forwarded traffic. The default policy is ACCEPT for all three chains, which are INPUT, OUTPUT, and FORWARD.

Run a command in LR-xx that show iptables chains. What is the default setting? How could you improve these settings to be less vulnerable to attacks?

```

az vm show --resource-group Student-RG-954059 --name LX-87 

LX-87.CSN4002234.com

```

```

az vm show --resource-group Student-RG-954059 --name LR-87 

LR-87.CSN4002234.com

```

### Part C - Azure Cost Analysis Charts

