#!/bin/bash

shopt -s extglob

DIR_JOB=$CUSTOM_ENV_CI_BUILDS_DIR/$GITLAB_USER_LOGIN/$CUSTOM_ENV_CI_PROJECT_NAME/$CUSTOM_ENV_CI_JOB_STAGE/$CUSTOM_ENV_CI_JOB_NAME/$CUSTOM_ENV_CI_JOB_ID
SCRIPT_CLEANUP="${@:(-2):1}" # second to last argument is the run script

$SCRIPT_CLEANUP

rm -f "$DIR_JOB"/!(*.log)
