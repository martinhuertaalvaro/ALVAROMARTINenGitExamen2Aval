#!/bin/bash

data=$(grep "2022" consumo.txt | grep -E "Valencia|Madrid|Barcelona")

for city in "Valencia" "Madrid" "Barcelona"; do
    consumo=$(echo "$data" | awk -v city="$city" '$1 == city { print $4 }')
    is_decreasing=true
    last_consumo=-1
    for c in $consumo; do
        if [ "$last_consumo" -ne -1 ] && [ "$c" -gt "$last_consumo" ]; then
            is_decreasing=false
            break
        fi
        last_consumo="$c"
    done
    if [ "$is_decreasing" = true ]; then
        echo "$city"
    fi
done
