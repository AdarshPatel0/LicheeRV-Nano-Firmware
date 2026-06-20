sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    gcc-riscv64-linux-gnu \
    device-tree-compiler \
    python3 \
    python-is-python3 \
    libgnutls28-dev \
    bison \
    flex \
    parted \
    mtools \
    git

git submodule update --init --recursive --remote --rebase