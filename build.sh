export ARCH=riscv
export CROSS_COMPILE=riscv64-linux-gnu-

cd u-boot
make sipeed_licheerv_nano_defconfig
make -j$(nproc)
cd ..

cd opensbi
make PLATFORM=generic FW_FDT_PATH=../u-boot/u-boot.dtb -j$(nproc)
cd ..

cd fiptool
./fiptool \
  --fsbl data/fsbl/cv181x.bin \
  --ddr_param data/ddr_param.bin \
  --opensbi ../opensbi/build/platform/generic/firmware/fw_dynamic.bin \
  --uboot ../u-boot/u-boot.bin \
  --rtos data/cvirtos.bin
cp fip.bin ..
cd ..