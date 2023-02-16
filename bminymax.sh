#!/bin/bash


minimo=$(awk '{print $4}' consumo.txt | grep -Eo '[0-9]+' | sort -n | head -1)
maximo=$(awk '{print $4}' consumo.txt | grep -Eo '[0-9]+' | sort -n | tail -1)


linea_minimo=$(grep "$minimo" consumo.txt)
ciudad_minimo=$(echo "$linea_minimo" | awk '{print $1}')
mes_minimo=$(echo "$linea_minimo" | awk '{print $2}')
anno_minimo=$(echo "$linea_minimo" | awk '{print $3}')


linea_maximo=$(grep "$maximo" consumo.txt)
ciudad_maximo=$(echo "$linea_maximo" | awk '{print $1}')
mes_maximo=$(echo "$linea_maximo" | awk '{print $2}')
anno_maximo=$(echo "$linea_maximo" | awk '{print $3}')


echo "Valor mínimo de consumo: $minimo en $ciudad_minimo, $mes_minimo $anno_minimo"
echo "Valor máximo de consumo: $maximo en $ciudad_maximo, $mes_maximo $anno_maximo"



