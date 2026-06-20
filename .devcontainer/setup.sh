sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    riscv64-linux-gnu-gcc \
    device-tree-compiler \
    python3 \
    python-is-python3 \
    git \
git submodule update --init --recursive --remote --rebase