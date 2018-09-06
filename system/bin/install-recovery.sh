#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:36414798:0281eb9556c322f5331581971cc071cecb4b718e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:31823178:86a52df3521e29e3601990ffad4ac69410e1448c EMMC:/dev/block/bootdevice/by-name/recovery 0281eb9556c322f5331581971cc071cecb4b718e 36414798 86a52df3521e29e3601990ffad4ac69410e1448c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
