#!/bin/bash



while true; do
 find $1 -type f | shuf | while read fname; do
        feh --bg-fill "$fname"
        sleep ${2:-30}
    done
done
