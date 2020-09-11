#!/usr/bin/env bash
#
# ############################ #
# #  deploy_lab_docker.sh ## #
# ########################## #
#
# Author: David J. Meier
# Email: dmeier@vmware.com
#
# Instructions:
#   * Validate Docker is installed (e.g. `docker info`)
#   * Validate this script (`deploy_lab_docker.sh`) has
#     execute permissions.
#   * Configure `Nested Lab Deployment.ps1` variables.
#   * Validate all required software is in folder `lab-software`
#   * Run this script (e.g. `./deploy_lab_docker.sh`) from
#     the root of this repository.
#
##################################################
if [[ -x "$(command -v docker)" ]]; then
    docker run --rm -it --network host --workdir="/scripts" --entrypoint="/usr/bin/pwsh" -v ${PWD}:/scripts vmware/powerclicore "Nested Lab Deployment.ps1"
else
    echo "### Docker not installed, exiting."
fi