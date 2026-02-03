#!/bin/bash
# This is a script to build the 6 button Mega Drive controller PCB firmware.
# You need avr-gcc version 8 or later and avr-libc installed to build this code.

# Exit on error, unset variables, catch errors behind a pipe
set -euo pipefail

# Move to the directory where the script is located
cd "$(dirname "$0")"

# Remove previous build, if it exists.
rm -f main.elf main.hex

# Build controller firmware.
avr-gcc -mmcu=attiny404 -O3 -Wall -Wextra main.c -o main.elf
avr-objcopy -O ihex -R .eeprom main.elf main.hex
