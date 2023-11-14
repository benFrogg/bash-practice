#!/usr/bin/env bash

main () {
    args1="$1"
    length=${#args1}
    result="${args1:0:1}"
    for ((idx = 0; idx < $length; idx++)); do
        if [[ "${args1:idx:1}" == [-_\ ] ]] && [[ "${args1:idx+1:1}" =~ [[:alpha:]] ]]; then
            result+="${args1:idx+1:1}"
        fi
    done
    echo ${result^^}
}

main "$@"