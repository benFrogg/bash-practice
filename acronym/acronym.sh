#!/usr/bin/env bash

main () {
    args1="$1"
    length=${#args1}
    result="${args1:0:1}"
    for ((i = 0; i < ${#args1}; i++)); do
        increment=1
        if [ "$i" -ne "$((length - 1))" ] && [ "${args1:i:1}" =  " " ] || [ "${args1:i:1}" = "-" ] || [ "${args1:i:1}" = "_" ]; then
            if [[ "${args1:i+1:1}" =~ [[:alpha:]] ]]; then
                result+="${args1:i+$increment:1}"
            else
                increment+=1
            fi
        fi
    done
    echo "$result" | tr '[:lower:]' '[:upper:]'
}

main "$@"