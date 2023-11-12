#!/usr/bin/env bash
main () {
    result=""

    if [ $(("$1" % 3)) -eq 0 ]; then
        result+="Pling"
    fi

    if [ $(("$1" % 5)) -eq 0 ]; then
        result+="Plang"
    fi

    if [ $(("$1" % 7)) -eq 0 ]; then
        result+="Plong"
    fi

    # If none of the conditions are true, use the original number
    if [ -z "$result" ]; then
        result="$1"
    fi

    echo "$result"
    exit 0
}

main "$@"