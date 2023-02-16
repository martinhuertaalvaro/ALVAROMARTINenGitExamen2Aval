#!/bin/bash

media_valencia=$(./cmedia.sh Valencia | grep -Eo '[0-9]+'| awk '{print $1}')
media_barcelona=$(./cmedia.sh Barcelona | grep -Eo '[0-9]+'| awk '{print $1}')
media_madrid=$(./cmedia.sh Madrid | grep -Eo '[0-9]+'| awk '{print $1}')

echo $media_barcelona


if [ $media_valencia < $media_barcelona ]; then
    ciudad_menor=Valencia
    media_menor=$media_valencia
else
    ciudad_menor=Barcelona
    media_menor=$media_barcelona
fi

if [ $media_madrid < $media_menor ]; then
    ciudad_menor=Madrid
    media_menor=$media_madrid
fi

echo "La ciudad con la media de consumo más baja es $ciudad_menor con una media de $media_menor"
