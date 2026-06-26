export CROSS_COMPILE=riscv64-linux-gnu-

set -e

cd u-boot
make distclean
make sipeed_licheerv_nano_defconfig
make menuconfig
make -j$(nproc)
cd ..
cd opensbi
make distclean
make PLATFORM=generic FW_FDT_PATH=../u-boot/u-boot.dtb -j$(nproc)
cd ..
cd fiptool
./fiptool \
  --fsbl data/fsbl/cv181x.bin \
  --ddr_param data/ddr_param.bin \
  --opensbi ../opensbi/build/platform/generic/firmware/fw_dynamic.bin \
  --uboot ../u-boot/u-boot.bin \
  --rtos data/cvirtos.bin
cd ..
dd if=/dev/zero of=disk.img bs=4096 count=16384
parted disk.img mklabel msdos
parted disk.img mkpart primary fat32 1MiB 100%
mformat -i disk.img@@1048576 -F -v "BOOT" ::
mcopy -i disk.img@@1048576 -s fiptool/fip.bin ::/