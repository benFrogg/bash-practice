#!/usr/bin/env bash

main () {
    args1="$1"
    length=${#args1}
    result=0
    for ((i=0;i<${#args1};i++)); do
        result=$((result+(${args1:i:1}**length)))
    done

    if [ $args1 -eq $result ]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"