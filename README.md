thermal-flow

Generic ESC/POS thermal printer driver specialized for 80mm hardware.
Overview

This project provides a streamlined workflow to automate the printing process on ESC/POS thermal printers via network interface. It is designed to iterate through local directories and output images recursively using Shell scripting.

--- Usage: ---

To execute the automated printing sequence:

    Place all target images within a specific directory.

    Ensure folder-print.sh, create-file-to-print.sh, and dibujo_binario.bin are in the same workspace.

    Run the shell script:

    chmod +x folder-print.sh
    ./folder-print.sh

--- Configuration: ---

Before execution, the network parameters must be manually defined. Locate the IP address variable within folder-print.sh and update it to match your printer's current network configuration.

Note: The default example uses 192.168.2.160.
