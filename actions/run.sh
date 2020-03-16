#!/bin/bash

scriptPath=$(realpath $0)
actionsPath=$(dirname $scriptPath)
providerRunnerPath=$(dirname $actionsPath)

bash $providerRunnerPath/providerRunner.sh
