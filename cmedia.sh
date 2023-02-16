#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Error: Debe especificar una ciudad como argumento"
  exit 1
fi

ciudad="$1"

media=$(awk -v ciudad="$ciudad" '$1 == ciudad { sum += $4; count++ } END { print sum/count }' consumo.txt)

echo "Media de consumo en $ciudad: $media"
