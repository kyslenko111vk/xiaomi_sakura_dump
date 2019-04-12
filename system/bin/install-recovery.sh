#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29785422:0427f7d350e3112b5b1d8e7e8a534f27b2b93ce1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23561546:bd640f24699b84a2b666e7b7f0195185e1f5a8a3 EMMC:/dev/block/bootdevice/by-name/recovery 0427f7d350e3112b5b1d8e7e8a534f27b2b93ce1 29785422 bd640f24699b84a2b666e7b7f0195185e1f5a8a3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
