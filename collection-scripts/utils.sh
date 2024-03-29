#!/usr/bin/env bash

#
# Please Note:
# While using bash variables inside the functions defined here,
# ensure that the variable has been defined before,
# you call the related helper function.
#
# Also, to prevent sourcing the file everywhere, please export the functions
# you define here using `export -f <function_name>`
#

dbglog() {
    # Allow the input to be piped
    declare msg=${1:-$(</dev/stdin)}

    echo -e "${msg}" | tee -a "${BASE_COLLECTION_PATH}"/gather-debug.log
}

# Works similar to dbglog but accepts a custom file name as an arg
# 1st arg is the file name to write to
# 2nd arg is the message to append
dbglogf() {
    # Allow the input to be piped
    declare msg=${2:-$(</dev/stdin)}

    if [[ -z $1 || -z $msg ]]; then
        echo "dbglogf: Not enough args to call the function."
        exit 1
    fi

    echo -e "${msg}" | tee -a "${1}"
}

# Read the `MUST_GATHER_SINCE` and `MUST_GATHER_SINCE_TIME`
# from the ENV and export it for use in the gather scripts
#
# Acc to spec, only one of `MUST_GATHER_SINCE`
# or `MUST_GATHER_SINCE_TIME` can be used.
parse_since_time() {
    local FILTER_ARGS=""

    # We do not need to validate the values here, they are validated
    # by the oc cli.
    # Ref: https://github.com/openshift/oc/commit/1fc5c7d79ff5c2fa19c35b7a004dc99eb3330806
    if [ -n "${MUST_GATHER_SINCE:-}" ]; then
        FILTER_ARGS="--since=${MUST_GATHER_SINCE}"
    fi

    if [ -n "${MUST_GATHER_SINCE_TIME:-}" ]; then
        FILTER_ARGS="--since-time=${MUST_GATHER_SINCE_TIME}"
    fi

    # It is possible that user is not providing any filters
    # We do not export the variable in that case
    if [ -n "${FILTER_ARGS}" ]; then
        export LOG_FILTER_ARGS="${FILTER_ARGS}"
    fi
}

# Export the functions so that the file needs to be sourced only once
export -f dbglog
export -f dbglogf
export -f parse_since_time
