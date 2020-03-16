#!/bin/bash

launchctl unload com.pcx.runner.daemon.plist
rm ~/Library/LaunchAgents/com.pcx.runner.daemon.plist
rm -rf /Users/Shared/PCX/ProviderRunner/
