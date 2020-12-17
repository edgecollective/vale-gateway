#!/bin/bash

# standard arduino esp32 heltec stuff
cp /home/dwblair/.arduino15/packages/esp32/hardware/esp32/1.0.4/tools/partitions/boot_app0.bin ./
cp /home/dwblair/.arduino15/packages/esp32/hardware/esp32/1.0.4/tools/sdk/bin/bootloader_qio_80m.bin ./

# special to the build given on the command line
cp /tmp/arduino_build_$1/*.bin ./