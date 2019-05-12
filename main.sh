#!/usr/bin/env bash

SOMETHING_FLAG=0

function usage() {
cat <<_EOT_
    usage:
        aaaaa
        bbbbb
_EOT_
}

while getopts ":ha-:" opt; do
    case "$opt" in
        -)
            case "${OPTARG}" in
                help)
                    usage
                    exit 0
                    ;;
                all)
                    SOMETHING_FLAG=1
                    ;;
            esac
            ;;
        h)
            usage
            exit 0
            ;;
        a)
            SOMETHING_FLAG=1
            ;;

    esac
done

echo "do something"

echo "${SOMETHING_FLAG}"