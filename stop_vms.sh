#/bin/sh

#read config
source ./config.sh

az vm list --output table | grep $regions | while read -r name resourcegroup location zones ; do
    echo "stopping vm $name in resourcegroup $resourcegroup in region $location in zones $zones"
    az vm stop --name $name --resource-group $resourcegroup
done
