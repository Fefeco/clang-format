#!/bin/bash
# Verifica si se han pasado argumentos
if [ "$#" -lt 1 ]; then
  echo "No arguments provided"
  exit 1
fi

# Ejecuta el contenedor Docker con los argumentos pasados
docker run -v $(pwd):/usr/src/app clang-format bash -c "clang-format $*"