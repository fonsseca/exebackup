#!/bin/bash
file = $1

linhas=$(wc -l < $file)

echo "numero de linhas=$linhas"

if [[ $linha -lt 100 ]] 
then   
      mkdir pequeno
      mv $file pequeno
      echo "movido pra pasta pequena"

elif [[ $linha -lt 500 ]] 
then 
      mkdir medio
      mv $file medio
      echo "movido pra pasta media"
else
      mkdir grande
      mv $file grande
      echo "movido pra pasta grande"
fi

