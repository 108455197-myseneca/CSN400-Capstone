echo
echo
echo "---------------------------------------------------"
echo "---------------------------------------------------"
echo 
echo "    ____  ___                __    __               "
echo "    |     |__   |\ |  |_|   |  |  |  |              "   
echo "    |___   __|  | \|    |   |__|  |__|              " 
echo
echo "---------------------------------------------------"
echo "---------------------------------------------------"
echo 

echo "Loading variables:"
echo "network_config.sh"
source ./network_config.sh
echo "Loaded variabes without error"

echo "---------------------------------------------------"
echo "Configurations:"

echo "RG_NAME: $RG_NAME"
echo "LOCATION: $LOCATION"
echo "ID: $ID"
echo

echo "---------------------------------------------------"
echo "Networking - Virtual Networks"
echo
echo "Student_vnet_name: $Student-954059"
echo "Router_vnet_name: $Router-87"
echo "Server_vnet_name: $Server-87"

echo "Student_vnet_address: $10.3.46.0/24"
echo "Router_vnet_address: $192.168.87.0/24"
echo "Server_vnet_address: $172.17.87.0/24"
echo 

echo "---------------------------------------------------"
echo "Networking - Virtual Networks - Subnets"
echo
echo "Client_Subnet_list:"
for item in "${Client_Subnet_list[@]}"
do
    echo "$item"
done
echo
echo "Router_Subnets_list:"
for item in "${Router_Subnets_list[@]}"
do
    echo "$item"
done
echo
echo "Server_Subnets_list:"
for item in "${Server_Subnets_list[@]}"
do
    echo "$item"
done


echo "---------------------------------------------------"
echo "Networking - Virtual Networks - Network Peerings"
echo
for item in "${Peerings_list[@]}"
do
    echo "Peering: $item"
done


echo "---------------------------------------------------"
echo "Networking - Route Tables"
echo
echo "RT_Name: $RT_Name"


echo "---------------------------------------------------"
echo "Networking - Route Tables - Routes"
echo
for item in "${Routes_list[@]}"
do
    echo "$item"
done

echo "---------------------------------------------------"
echo "Checking status for Resource Group: $RG_NAME"
if [[ ! $(az group list -o tsv --query "[?name=='$RG_NAME']") ]]
then
    echo "doesn't exit! Program will abort now!"
    exit 3
else 
   echo "exists!"
   echo "Resource groups:"
   az group list --out table
fi


echo
echo "---------------------------------------------------"
echo "Network Config Test Ended without error!"
echo "END!"
echo "---------------------------------------------------"
echo
