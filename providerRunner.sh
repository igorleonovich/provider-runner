#!/bin/bash

scriptPath=$(realpath $0)
actionsPath=$(dirname $scriptPath)
providerRunnerPath=$(dirname $actionsPath)
projectsPath=$(dirname $providerRunnerPath)

echo "ProviderRunner started"

# 1. ProviderServer?
# 2. ProviderClient?
# 3. ProviderManager?
# 4. Deploy Config
