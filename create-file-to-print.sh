#!/bin/bash

# Extensiones de imagen que quieres procesar
for imagen in *.{jpg,jpeg,png,bmp,webp}; do
    # Verificar si existen archivos con esa extensión
    [ -e "$imagen" ] || continue

    echo "Procesando: $imagen..."

    # 1. Convertir la imagen al ancho de 512px y limpiar metadatos
    # Usamos un nombre temporal para no sobreescribir el original con el resize
    convert "$imagen" -resize 512x -gravity center -extent 512x +profile "*" "tmp_$imagen"

    # 2. Generar el binario con tu script de Python
    python3 ./imprimir_logo.py "./tmp_$imagen"

    # 3. Enviar a la impresora y cerrar la conexión tras 1 segundo
    # He añadido -w 1 para que nc no se quede colgado esperando
    (cat dibujo_binario.bin; echo -e "\n\n\n\n\n\n\n\x1dV\x00") | nc -w 1 192.168.1.160 9100

    # 4. Limpieza y espera
    rm "tmp_$imagen"
    echo "Impreso. Esperando 2 segundos para la siguiente..."
    sleep 1.3
done

echo "¡Hecho! Todas las imágenes han sido enviadas."
