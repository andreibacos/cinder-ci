#!/bin/bash
#
hyperv_node=$1
JOB_TYPE=$2
# Loading all the needed functions
source /usr/local/src/cinder-ci-2016/jobs/utils.sh

# Loading parameters
source /home/jenkins-slave/runs/devstack_params.$ZUUL_UUID.$JOB_TYPE.txt

export LOG_DIR='C:\Openstack\logs\'

# building HyperV node
echo $hyperv_node
join_hyperv $hyperv_node $WIN_USER $WIN_PASS

