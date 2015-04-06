#!/bin/bash
source /usr/local/src/cinder-ci/jobs/utils.sh
set -e

source $KEYSTONERC

# Deploy devstack vm
source /usr/local/src/cinder-ci/jobs/deploy_devstack_vm.sh

update_local_conf "/usr/local/src/cinder-ci/jobs/smb3_windows/local-conf-extra"

run_devstack

# Deploy Windows Cinder vm
source /usr/local/src/cinder-ci/jobs/deploy_cinder_windows_vm.sh
