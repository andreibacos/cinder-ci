#!/bin/bash
export FAILURE=0
if [[ ! -z $RUN_TESTS ]] && [[ $RUN_TESTS == "no" ]]; then
    echo "Init phase done, not running tests"
    result_tempest=0
else
    echo "Running tests"
    ssh -o "UserKnownHostsFile /dev/null" -o "StrictHostKeyChecking no" -i $DEVSTACK_SSH_KEY ubuntu@$DEVSTACK_FLOATING_IP "source /home/ubuntu/keystonerc && /home/ubuntu/bin/run-all-tests.sh $JOB_TYPE"
    result_tempest=0
fi
