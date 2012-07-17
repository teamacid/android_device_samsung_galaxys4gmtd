#!/sbin/sh
mount -t vfat /dev/block/mmcblk0p1 /sdcard
mount /cache

# Check if we have cwm/twrp scripts on the sdcard from a BML -> MTD flash
mv /sdcard/extendedcommand /cache/recovery/extendedcommand
mv /sdcard/openrecoveryscript /cache/recovery/openrecoveryscript
