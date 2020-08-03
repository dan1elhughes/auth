#!/usr/bin/env bash

url="https://github.com/dan1elhughes.keys"
cachefile="/tmp/keycache"

keys=$(curl -sf $url)
code=$?

if [ "$code" -eq "0" ]; then
    echo "$keys" | tee $cachefile
else
    cat $cachefile
fi
