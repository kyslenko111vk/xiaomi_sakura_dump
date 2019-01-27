#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29781252:a938c315e226449063c61ff0f6e9055a69fd6c45; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23561472:8f3e9febbd166724bcd3f22a1cf213679280d098 EMMC:/dev/block/bootdevice/by-name/recovery a938c315e226449063c61ff0f6e9055a69fd6c45 29781252 8f3e9febbd166724bcd3f22a1cf213679280d098:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
