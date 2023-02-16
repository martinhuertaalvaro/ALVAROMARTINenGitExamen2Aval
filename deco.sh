#!/bin/bash

if [ -z "$1" ]; then
    echo "Debe proporcionar el nombre de una ciudad como argumento."
    exit 1
fi

media=$(./cmedia.sh "$1" | grep -Eo '[0-9]+')

if [ "$media" -lt 400 ]; then
    echo "$1 es ECO."
else
    echo "$1 es NO ECO."
fi
