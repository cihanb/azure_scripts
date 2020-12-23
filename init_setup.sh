#/bin/sh

#read config
source ./config.sh

brew update && brew install azure-cli
az login 