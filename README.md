# thermal-flow

Driver genérico ESC/POS para impresoras térmicas de 80mm, con envío de trabajos por red vía netcat.
Generic ESC/POS thermal printer driver for 80mm hardware, sending print jobs over the network via netcat.

---

## 🇪🇸 Español

### Descripción
Este proyecto automatiza el proceso de impresión en impresoras térmicas ESC/POS a través de la interfaz de red. Recorre un directorio local e imprime recursivamente las imágenes que contiene, combinando Python y Bash.

### Archivos
- `folder-print.sh`: script principal que recorre el directorio y envía cada imagen a la impresora.
- `create-file-to-print.py`: convierte una imagen al formato ESC/POS que entiende la impresora.
- `dibujo_binario.bin`: payload en bruto (ESC/POS) que se envía a la impresora por netcat; es el formato exacto que el hardware espera leer por el puerto de red.

### Uso
1. Coloca todas las imágenes objetivo en un directorio concreto.
2. Asegúrate de que `folder-print.sh`, `create-file-to-print.py` y `dibujo_binario.bin` estén en el mismo directorio de trabajo.
3. Ejecuta el script:
```bash
chmod +x folder-print.sh
./folder-print.sh
```

### Configuración
Antes de ejecutar, define manualmente los parámetros de red. Busca la variable de IP dentro de `folder-print.sh` y actualízala con la IP de tu impresora.

Nota: el ejemplo por defecto usa `192.168.2.160`.

---

## 🇺🇸 English

### Overview
This project automates the printing process on ESC/POS thermal printers via network interface. It iterates through a local directory and prints the images it contains recursively, combining Python and Bash.

### Files
- `folder-print.sh`: main script that walks the directory and sends each image to the printer.
- `create-file-to-print.py`: converts an image into the ESC/POS format the printer understands.
- `dibujo_binario.bin`: holds the raw ESC/POS payload sent to the printer over netcat; it's the exact format the hardware expects to read over the network port.

### Usage
1. Place all target images inside a specific directory.
2. Make sure `folder-print.sh`, `create-file-to-print.py`, and `dibujo_binario.bin` are in the same workspace.
3. Run the script:
```bash
chmod +x folder-print.sh
./folder-print.sh
```

### Configuration
Before execution, the network parameters must be manually defined. Locate the IP address variable inside `folder-print.sh` and update it to match your printer's current network configuration.

Note: the default example uses `192.168.2.160`.

---

## License
MIT — see [LICENSE](LICENSE).
