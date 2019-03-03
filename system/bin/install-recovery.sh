#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29785422:aaf509f3f3970a9a8dd00faa5430e9d238a241d3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23561546:de87f01f372169c3e178c5790f0b61b152776c32 EMMC:/dev/block/bootdevice/by-name/recovery aaf509f3f3970a9a8dd00faa5430e9d238a241d3 29785422 de87f01f372169c3e178c5790f0b61b152776c32:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
