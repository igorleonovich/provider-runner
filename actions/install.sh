#!/bin/bash

scriptPath=$(realpath $0)
actionsPath=$(dirname $scriptPath)
providerRunnerPath=$(dirname $actionsPath)

launchctl unload com.pcx.runner.daemon.plist
rm -rf /Users/Shared/PCX/ProviderRunner/
mkdir -p /Users/Shared/PCX/ProviderRunner/
cp -a $providerRunnerPath/. /Users/Shared/PCX/ProviderRunner/
mv /Users/Shared/PCX/ProviderRunner/com.pcx.runner.daemon.plist ~/Library/LaunchAgents/com.pcx.runner.daemon.plist
launchctl load ~/Library/LaunchAgents/com.pcx.runner.daemon.plist
