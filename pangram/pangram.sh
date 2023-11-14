#!/usr/bin/env bash

main() {
    if [ -z "$@" ]; then
        echo "false"
        exit 0
    fi
    
    args1="$1"
    alphabet="abcdefghijklmnopqrstuvwxyz"
    all_present=true
    
    for letter in $(echo "$alphabet" | fold -w1); do
        if [[ "${args1,,}" != *"$letter"* ]]; then
            all_present=false
        fi
    done
    
    if [ "$all_present" = true ]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
