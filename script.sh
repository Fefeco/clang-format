#!/bin/bash

CONTAINER="clang-format"

# Verifica si se han pasado argumentos
if [ "$#" -lt 1 ]; then
  echo "No arguments provided"
  exit 1
fi

# Verifica si existe el contenedor
if [ $(docker images -aqf reference=$CONTAINER | wc -l) -eq 0 ]; then
  echo "Building $CONTAINER container"
  docker build -t clang-format ~/clang
fi

# Ejecuta el contenedor Docker con los argumentos pasados
docker run --rm -v $(pwd):/usr/src/app clang-format \
bash -c "clang-format $*"
