#!/bin/sh



if [ $# -lt 2 ]; then

    echo "Error: writefile and writestr must be specified"

    exit 1

fi



writefile="$1"

writestr="$2"



writedir=$(dirname "$writefile")



if ! mkdir -p "$writedir"; then

    echo "Error: could not create directory path for $writefile"

    exit 1

fi



if ! printf '%s\n' "$writestr" > "$writefile"; then

    echo "Error: could not create file $writefile"

    exit 1

fi


