# Usar una imagen base oficial de Ubuntu
FROM ubuntu:24.04

# Establecer el mantenedor del Dockerfile
LABEL maintainer="fcarranz@student.42barcelona.com"

# Actualizar los paquetes e instalar dependencias
RUN apt-get update && \
    apt-get install -y \
    clang-format \
    && rm -rf /var/lib/apt/lists/*

# Establecer el directorio de trabajo
WORKDIR /usr/src/app
