#!/bin/bash

currentPath=$(pwd)
scriptPath=$(realpath $0)
providerRunnerPath=$(dirname $scriptPath)
providerPath=$(dirname $providerRunnerPath)
pcxPath=$(dirname $providerPath)
originalPCXProjectsPath="/Volumes/New/ProductCompanyX/Infrastructure/Projects"

bash $originalPCXProjectsPath/Provider/ProviderServer/actions/install.sh

echo "Set Keeper's State to everythingIsOk"
echo "state=everythingIsOk" > $pcxPath/keeper/variables/state

# 1. ProviderServer?
# 2. ProviderClient?
# 3. ProviderManager?
# 4. Deploy Config
