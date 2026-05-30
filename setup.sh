sudo apt update
sudo apt upgrade -y
sudo apt install -y cpio xxd
sudo apt install -y build-essential cmake git pkg-config rsync unzip wget zip
sudo apt install -y gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
sudo apt install -y bc bison flex liblzma-dev libncurses-dev libssl-dev device-tree-compiler
sudo apt install -y ninja-build tcl
sudo apt install -y dosfstools file mtools
sudo apt install -y fuse2fs shellcheck
sudo apt install -y python-is-python3
sudo apt install -y gcc-riscv64-unknown-elf
sudo apt install -y libgnutls28-dev
sudo apt install -y file binwalk u-boot-tools

git submodule update --init --recursive