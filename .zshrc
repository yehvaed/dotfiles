#!/usr/bin/env zsh

export DISCOVER_PATH="$HOME"

# do action on every element in list
each() {
    local fn=($1) args=(${*:2})

    for arg in ${args[@]}; do
        eval ${fn[@]} ${arg}
    done
}

# try to find files in DISCOVERY_PATH
discover_by() {
    find_helper() {
        find $2 -maxdepth 1 -type f -exec grep -q $1 {} \; -print
    }

    each "find_helper '$1'" ${DISCOVER_PATH//:/ }
    unset -f find_helper
}

# source file and use its loader if exist
apply() {
    if [[ -f "$1" ]]; then
        __exec_once() {
            which "$1" >& /dev/null && $1 && unset -f $1
        }

        [[ -f "$1-loader" ]] && source "$1-loader"
        
        __exec_once before
        source "$1"
        __exec_once after

        unset -f __exec_once
    fi
}

# check if current os name match
on() {
    local current_os=$(uname | tr '[:upper:]' '[:lower:]')
    [[ "${current_os}" == "$1" ]]
}

# helpers 
discover() {
    discover_by '^# loaded by discovery - privileged$'
    discover_by '^# loaded by discovery$'
}

# main script
each "apply" $( discover )
