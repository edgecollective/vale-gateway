#!/bin/bash

python /home/dwblair/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0xe000 /home/dwblair/.arduino15/packages/esp32/hardware/esp32/1.0.4/tools/partitions/boot_app0.bin 0x1000 /home/dwblair/.arduino15/packages/esp32/hardware/esp32/1.0.4/tools/sdk/bin/bootloader_qio_80m.bin 0x10000 /tmp/arduino_build_$1/heltec_wifi_lora_bayou_testdata.ino.bin 0x8000 /tmp/arduino_build_$1/heltec_wifi_lora_bayou_testdata.ino.partitions.bin 