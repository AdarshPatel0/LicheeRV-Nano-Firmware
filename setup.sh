sudo apt update
sudo apt upgrade -y
sudo apt install -y cpio xxd build-essential cmake git pkg-config rsync unzip wget zip gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu bc bison flex liblzma-dev libncurses-dev libssl-dev device-tree-compiler ninja-build tcl dosfstools file mtools fuse2fs shellcheck python-is-python3 gcc-riscv64-unknown-elf libgnutls28-dev file binwalk u-boot-tools
git submodule update --init --recursive