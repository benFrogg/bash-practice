#!/usr/bin/env bash

main () {
    if [ "$#" -ne 2 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        exit 1
    fi
    args1="$1"
    args2="$2"
    if [ ${#args1} -ne ${#args2} ]; then
        echo "$1 and $2 strands must be of equal length"
        exit 1
    fi
    result=0
    for ((i = 0; i < ${#args1}; i++)); do
        if [ "${args1:$i:1}" != "${args2:$i:1}" ]; then
            ((result++))
        fi
    done

    echo "$result"
}

main "$@"
