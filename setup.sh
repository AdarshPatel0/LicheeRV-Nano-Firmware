sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    build-essential \
    crossbuild-essential-riscv64 \
    git \
    make \
    gcc-riscv64-linux-gnu \
    binutils-riscv64-linux-gnu \
    libgnutls28-dev \
    bc \
    bison \
    flex \
    libssl-dev \
    device-tree-compiler \
    python3 \
    python3-dev \
    python3-setuptools \
    python3-pip \
    swig \
    pkg-config \
    rsync \
    cpio \
    curl \
    wget
git submodule update --init --recursive