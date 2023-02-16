#!/bin/bash


function calcular_total() {
  local ciudad="$1"
  local total=0

  
  while read linea; do
    if [[ "$linea" == "$ciudad"* ]]; then
      consumo=$(echo "$linea" | awk '{print $4}')
      total=$((total + consumo))
    fi
  done < consumo.txt

  
  echo "El total de consumo de $ciudad es: $total"
}


ciudad="$1"


while ! grep -q "^$ciudad" consumo.txt; do
  echo "La ciudad $ciudad no existe. Introduzca una ciudad válida:"
  read ciudad
done


calcular_total "$ciudad"
