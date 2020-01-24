qemu-system-arm -cpu arm1176 -m 256 \
  -kernel kernel-qemu-4.19.50-buster \
  -M versatilepb \
  -dtb versatile-pb.dtb \
  -no-reboot \
  -nographic \
  -append "dwc_otg.lpm_enable=0 root=/dev/sda2 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait" \
  -drive "file=raspbian-buster-lite.img,index=0,media=disk,format=raw" \
  -net user,hostfwd=tcp::22222-:22 -net nic

