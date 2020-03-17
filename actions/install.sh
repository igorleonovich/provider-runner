#!/bin/bash

scriptPath=$(realpath $0)
actionsPath=$(dirname $scriptPath)
providerRunnerPath=$(dirname $actionsPath)

file=~/Library/LaunchAgents/com.pcx.providerrunner.daemon.plist
if [ -f "$file" ]; then
    launchctl unload $file
fi
rm -rf /Users/Shared/PCX/Provider/ProviderRunner/
mkdir -p /Users/Shared/PCX/Provider/ProviderRunner/
cp -a $providerRunnerPath/. /Users/Shared/PCX/Provider/ProviderRunner/
mv /Users/Shared/PCX/Provider/ProviderRunner/com.pcx.providerrunner.daemon.plist ~/Library/LaunchAgents/com.pcx.providerrunner.daemon.plist
launchctl load ~/Library/LaunchAgents/com.pcx.providerrunner.daemon.plist
