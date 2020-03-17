#!/bin/bash

currentPath=$(pwd)
scriptPath=$(realpath $0)
actionsPath=$(dirname $scriptPath)
providerRunnerPath=$(dirname $actionsPath)
providerPath=$(dirname $providerRunnerPath)

bash $providerPath/ProviderServer/actions/uninstall.sh

file=~/Library/LaunchAgents/com.pcx.providerrunner.daemon.plist
if [ -f "$file" ]; then
    launchctl unload $file
    rm $file
fi
rm -rf /Users/Shared/PCX/Provider/ProviderRunner/
